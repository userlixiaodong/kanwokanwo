<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>视频录制socket.io客户端/服务器端</title>
    <script>
        if (location.href.indexOf('file:') == 0) {
            document.write('<h1 style="color:red;">Please load this HTML file on HTTP or HTTPS.</h1>');
        }
    </script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script src="/js/RecordRTC.js"></script>
    <script src="/js/socket.io-1.4.5.js"></script>

    <style>
        html {
            background-color: #f7f7f7;
        }

        body {
            background-color: white;
            border: 1px solid rgb(15, 158, 238);
            margin: 1% 35%;
            text-align: center;
        }

        hr {
            border: 0;
            border-top: 1px solid rgb(15, 158, 238);
        }

        a {
            color: #2844FA;
            text-decoration: none;
        }

        a:hover,
        a:focus {
            color: #1B29A4;
        }

        a:active {
            color: #000;
        }
    </style>
</head>

<body>
<h1>视频录制socket.io
</h1>
<p>
    <video id="camera-preview" style="border: 1px solid rgb(15, 158, 238); width: 94%;"></video>
</p>

<div style="display:none;">
    <label id="percentage">Ffmpeg Progress 0%</label>
    <progress id="progress-bar" value="0" max="100"></progress>
    <br />
</div>

<div>
    <button id="start-recording" disabled>Start Recording</button>
    <button id="stop-recording" disabled>Stop Recording</button>
</div>

<script>
    // you can set it equal to "false" to record only audio

    var videoServerUrl = "http://test.www.kanwokanwo.com";

    var recordVideoSeparately = !!navigator.webkitGetUserMedia;
    if (!!navigator.webkitGetUserMedia && !recordVideoSeparately) {
        var cameraPreview = document.getElementById('camera-preview');
        cameraPreview.parentNode.innerHTML = '<audio id="camera-preview" controls style="border: 1px solid rgb(15, 158, 238); width: 94%;"></audio> ';
    }
    var socketio = io(videoServerUrl);
    var mediaStream = null;
    socketio.on('connect', function() {
        startRecording.disabled = false;
    });
    var startRecording = document.getElementById('start-recording');
    var stopRecording = document.getElementById('stop-recording');
    var cameraPreview = document.getElementById('camera-preview');
    var progressBar = document.querySelector('#progress-bar');
    var percentage = document.querySelector('#percentage');
    var recordAudio, recordVideo;
    startRecording.onclick = function() {
        startRecording.disabled = true;
        navigator.getUserMedia({
            audio: true,
            video: true
        }, function(stream) {
            mediaStream = stream;
            recordAudio = RecordRTC(stream, {
                onAudioProcessStarted: function() {
                    recordVideoSeparately && recordVideo.startRecording();
                    cameraPreview.src = window.URL.createObjectURL(stream);
                    cameraPreview.play();
                    cameraPreview.muted = true;
                    cameraPreview.controls = false;
                }
            });
            recordVideo = RecordRTC(stream, {
                type: 'video'
            });
            recordAudio.startRecording();
            stopRecording.disabled = false;
        }, function(error) {
            alert(JSON.stringify(error));
        });
    };
    stopRecording.onclick = function() {
        startRecording.disabled = false;
        stopRecording.disabled = true;
        // stop audio recorder
        recordVideoSeparately && recordAudio.stopRecording(function() {
            // stop video recorder
            recordVideo.stopRecording(function() {
                // get audio data-URL
                recordAudio.getDataURL(function(audioDataURL) {
                    // get video data-URL
                    recordVideo.getDataURL(function(videoDataURL) {
                        var files = {
                            audio: {
                                type: recordAudio.getBlob().type || 'audio/wav',
                                dataURL: audioDataURL
                            },
                            video: {
                                type: recordVideo.getBlob().type || 'video/webm',
                                dataURL: videoDataURL
                            }
                        };
                        socketio.emit('message', files);
                        if (mediaStream) mediaStream.stop();
                    });
                });
                cameraPreview.src = '';
                cameraPreview.poster = 'ajax-loader.gif';
            });
        });
        // if firefox or if you want to record only audio
        // stop audio recorder
        !recordVideoSeparately && recordAudio.stopRecording(function() {
            // get audio data-URL
            recordAudio.getDataURL(function(audioDataURL) {
                var files = {
                    audio: {
                        type: recordAudio.getBlob().type || 'audio/wav',
                        dataURL: audioDataURL
                    }
                };
                socketio.emit('message', files);
                if (mediaStream) mediaStream.stop();
            });
            cameraPreview.src = '';
            cameraPreview.poster = 'ajax-loader.gif';
        });
    };
    socketio.on('merged', function(fileName) {
        var href = (location.href.split('/').pop().length ? location.href.replace(location.href.split('/').pop(), '') : location.href);
//        href = href + '/uploads/' + fileName;
        href = fileName;
        console.log('got file ' + href);
        cameraPreview.src = href
        cameraPreview.play();
        cameraPreview.muted = false;
        cameraPreview.controls = true;
    });
    socketio.on('ffmpeg-output', function(result) {
        if (parseInt(result) >= 100) {
            progressBar.parentNode.style.display = 'none';
            return;
        }
        progressBar.parentNode.style.display = 'block';
        progressBar.value = result;
        percentage.innerHTML = 'Ffmpeg Progress ' + result + "%";
    });
    socketio.on('ffmpeg-error', function(error) {
        alert(error);
    });
</script>

</body>

</html>