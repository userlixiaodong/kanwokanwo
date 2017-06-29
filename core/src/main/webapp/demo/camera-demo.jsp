<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Untitled Document</title>
</head>

<body>
    屏幕截图<br>
    <video id="video" width="640" height="480" autoplay></video>
    <button id="snap">Snap Photo</button>
    <canvas id="canvas" width="640" height="480"></canvas>


    <script>
        // Put event listeners into place
        window.addEventListener("DOMContentLoaded", function() {
            // Grab elements, create settings, etc.
            var canvas = document.getElementById("canvas"),
                    context = canvas.getContext("2d"),
                    video = document.getElementById("video"),
                    videoObj = { "video": true, "audio": true },
                    errBack = function(error) {
                        console.log("Video capture error: ", error.code);
                    };
            navigator.getUserMedia  = navigator.getUserMedia||navigator.webkitGetUserMedia||navigator.mozGetUserMedia||navigator.msGetUserMedia;
            window.URL = window.URL || window.webkitURL;
            // Put video listeners into place
            if(navigator.getUserMedia) { // Standard
                navigator.getUserMedia(videoObj, function(stream) {
                    video.src = window.URL.createObjectURL(stream);
                    video.play();
                }, errBack);
            } else{
                errBack;
            }
            // Trigger photo take
            document.getElementById("snap").addEventListener("click", function() {
                context.drawImage(video, 0, 0, 640, 480);
            });
        }, false);
    </script>
</body>
</html>


</body>
</html>
