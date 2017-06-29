"use strict";function RecordRTC(o,h){if(!o){throw"MediaStream is mandatory."}h=new RecordRTCConfiguration(o,h);var n=this;function g(){if(!h.disableLogs){console.debug("started recording "+h.type+" stream.")}if(c){c.clearRecordedData();c.resume();if(n.recordingDuration){j()}return n}b(function(){if(n.recordingDuration){j()}});return n}function b(p){if(p){h.initCallback=function(){p();p=h.initCallback=null}}var q=new GetRecorderType(o,h);c=new q(o,h);c.record();if(!h.disableLogs){console.debug("Initialized recorderType:",c.constructor.name,"for output-type:",h.type)}}function k(r){if(!c){return console.warn(d)}var q=this;if(!h.disableLogs){console.warn("Stopped recording "+h.type+" stream.")}if(h.type!=="gif"){c.stop(p)}else{c.stop();p()}function p(){for(var u in c){if(n){n[u]=c[u]}if(q){q[u]=c[u]}}var s=c.blob;if(r){var t=URL.createObjectURL(s);r(t)}if(s&&!h.disableLogs){console.debug(s.type,"->",bytesToSize(s.size))}if(!h.autoWriteToDisk){return}e(function(v){var w={};w[h.type+"Blob"]=v;DiskStorage.Store(w)})}}function l(){if(!c){return console.warn(d)}c.pause();if(!h.disableLogs){console.debug("Paused recording.")}}function f(){if(!c){return console.warn(d)}c.resume();if(!h.disableLogs){console.debug("Resumed recording.")}}function m(p){postMessage(new FileReaderSync().readAsDataURL(p))}function e(u,s){if(!u){throw"Pass a callback function over getDataURL."}var r=s?s.blob:c.blob;if(!r){if(!h.disableLogs){console.warn("Blob encoder did not yet finished its job.")}setTimeout(function(){e(u,s)},1000);return}if(typeof Worker!=="undefined"&&!navigator.mozGetUserMedia){var q=t(m);q.onmessage=function(v){u(v.data)};q.postMessage(r)}else{var p=new FileReader();p.readAsDataURL(r);p.onload=function(v){u(v.target.result)}}function t(v){var w=URL.createObjectURL(new Blob([v.toString(),"this.onmessage =  function (e) {"+v.name+"(e.data);}"],{type:"application/javascript"}));var x=new Worker(w);URL.revokeObjectURL(w);return x}}function j(){setTimeout(function(){k(n.onRecordingStopped)},n.recordingDuration)}var d='It seems that "startRecording" is not invoked for '+h.type+" recorder.";var c;var i={startRecording:g,stopRecording:k,pauseRecording:l,resumeRecording:f,initRecorder:b,setRecordingDuration:function(p,q){if(typeof p==="undefined"){throw"milliseconds is required."}if(typeof p!=="number"){throw"milliseconds must be a number."}n.recordingDuration=p;n.onRecordingStopped=q||function(){};return{onRecordingStopped:function(r){n.onRecordingStopped=r}}},clearRecordedData:function(){if(!c){return console.warn(d)}c.clearRecordedData();if(!h.disableLogs){console.debug("Cleared old recorded data.")}},getBlob:function(){if(!c){return console.warn(d)}return c.blob},getDataURL:e,toURL:function(){if(!c){return console.warn(d)}return URL.createObjectURL(c.blob)},save:function(p){if(!c){return console.warn(d)}invokeSaveAsDialog(c.blob,p)},getFromDisk:function(p){if(!c){return console.warn(d)}RecordRTC.getFromDisk(h.type,p)},setAdvertisementArray:function(r){h.advertisement=[];var q=r.length;for(var p=0;p<q;p++){h.advertisement.push({duration:p,image:r[p]})}},blob:null,bufferSize:0,sampleRate:0,buffer:null,view:null};if(!this){n=i;return i}for(var a in i){this[a]=i[a]}n=this;return i}RecordRTC.getFromDisk=function(a,b){if(!b){throw"callback is mandatory."}console.log("Getting recorded "+(a==="all"?"blobs":a+" blob ")+" from disk!");DiskStorage.Fetch(function(d,c){if(a!=="all"&&c===a+"Blob"&&b){b(d)}if(a==="all"&&b){b(d,c.replace("Blob",""))}})};RecordRTC.writeToDisk=function(a){console.log("Writing recorded blob(s) to disk!");a=a||{};if(a.audio&&a.video&&a.gif){a.audio.getDataURL(function(b){a.video.getDataURL(function(c){a.gif.getDataURL(function(d){DiskStorage.Store({audioBlob:b,videoBlob:c,gifBlob:d})})})})}else{if(a.audio&&a.video){a.audio.getDataURL(function(b){a.video.getDataURL(function(c){DiskStorage.Store({audioBlob:b,videoBlob:c})})})}else{if(a.audio&&a.gif){a.audio.getDataURL(function(b){a.gif.getDataURL(function(c){DiskStorage.Store({audioBlob:b,gifBlob:c})})})}else{if(a.video&&a.gif){a.video.getDataURL(function(b){a.gif.getDataURL(function(c){DiskStorage.Store({videoBlob:b,gifBlob:c})})})}else{if(a.audio){a.audio.getDataURL(function(b){DiskStorage.Store({audioBlob:b})})}else{if(a.video){a.video.getDataURL(function(b){DiskStorage.Store({videoBlob:b})})}else{if(a.gif){a.gif.getDataURL(function(b){DiskStorage.Store({gifBlob:b})})}}}}}}}};if(typeof module!=="undefined"){module.exports=RecordRTC}if(typeof define==="function"&&define.amd){define("RecordRTC",[],function(){return RecordRTC})}function RecordRTCConfiguration(a,b){if(b.recorderType&&!b.type){if(b.recorderType===WhammyRecorder||b.recorderType===CanvasRecorder){b.type="video"}else{if(b.recorderType===GifRecorder){b.type="gif"}else{if(b.recorderType===StereoAudioRecorder){b.type="audio"}else{if(b.recorderType===MediaStreamRecorder){if(a.getAudioTracks().length&&a.getVideoTracks().length){b.type="video"}else{if(a.getAudioTracks().length&&!a.getVideoTracks().length){b.type="audio"
}else{if(!a.getAudioTracks().length&&a.getVideoTracks().length){b.type="audio"}else{}}}}}}}}if(typeof MediaStreamRecorder!=="undefined"&&typeof MediaRecorder!=="undefined"&&"requestData" in MediaRecorder.prototype){if(!b.mimeType){b.mimeType="video/webm"}if(!b.type){b.type=b.mimeType.split("/")[0]}if(!b.bitsPerSecond){}}if(!b.type){if(b.mimeType){b.type=b.mimeType.split("/")[0]}if(!b.type){b.type="audio"}}return b}function GetRecorderType(b,c){var a;if(isChrome||isEdge||isOpera){a=StereoAudioRecorder}if(typeof MediaRecorder!=="undefined"&&"requestData" in MediaRecorder.prototype&&!isChrome){a=MediaStreamRecorder}if(c.type==="video"&&(isChrome||isOpera)){a=WhammyRecorder}if(c.type==="gif"){a=GifRecorder}if(c.type==="canvas"){a=CanvasRecorder}if(isMediaRecorderCompatible()&&isChrome&&a!==CanvasRecorder&&a!==GifRecorder&&typeof MediaRecorder!=="undefined"&&"requestData" in MediaRecorder.prototype){if(b.getVideoTracks().length){a=MediaStreamRecorder}}if(c.recorderType){a=c.recorderType}if(!c.disableLogs&&!!a&&!!a.name){console.debug("Using recorderType:",a.name||a.constructor.name)}return a}function MRecordRTC(a){this.addStream=function(b){if(b){a=b}};this.mediaType={audio:true,video:true};this.startRecording=function(){var b=this.mediaType;var g;var e=this.mimeType||{audio:null,video:null,gif:null};if(typeof b.audio!=="function"&&isMediaRecorderCompatible()&&a&&a.getAudioTracks&&a.getAudioTracks().length&&a.getVideoTracks().length){this.mediaType.audio=false}if(!!b.audio){g=null;if(typeof b.audio==="function"){g=b.audio}this.audioRecorder=new RecordRTC(a,{type:"audio",bufferSize:this.bufferSize,sampleRate:this.sampleRate,numberOfAudioChannels:this.numberOfAudioChannels||2,disableLogs:this.disableLogs,recorderType:g,mimeType:e.audio});if(!b.video){this.audioRecorder.startRecording()}}if(!!b.video){g=null;if(typeof b.video==="function"){g=b.video}var f=a;if(isMediaRecorderCompatible()&&!!b.audio&&typeof b.audio==="function"){var d=a.getVideoTracks()[0];if(!!navigator.mozGetUserMedia){f=new MediaStream();f.addTrack(d);if(g&&g===WhammyRecorder){g=MediaStreamRecorder}}else{f=new MediaStream([d])}}this.videoRecorder=new RecordRTC(f,{type:"video",video:this.video,canvas:this.canvas,frameInterval:this.frameInterval||10,disableLogs:this.disableLogs,recorderType:g,mimeType:e.video});if(!b.audio){this.videoRecorder.startRecording()}}if(!!b.audio&&!!b.video){var c=this;c.videoRecorder.initRecorder(function(){c.audioRecorder.initRecorder(function(){c.videoRecorder.startRecording();c.audioRecorder.startRecording()})})}if(!!b.gif){g=null;if(typeof b.gif==="function"){g=b.gif}this.gifRecorder=new RecordRTC(a,{type:"gif",frameRate:this.frameRate||200,quality:this.quality||10,disableLogs:this.disableLogs,recorderType:g,mimeType:e.gif});this.gifRecorder.startRecording()}};this.stopRecording=function(b){b=b||function(){};if(this.audioRecorder){this.audioRecorder.stopRecording(function(c){b(c,"audio")})}if(this.videoRecorder){this.videoRecorder.stopRecording(function(c){b(c,"video")})}if(this.gifRecorder){this.gifRecorder.stopRecording(function(c){b(c,"gif")})}};this.getBlob=function(c){var b={};if(this.audioRecorder){b.audio=this.audioRecorder.getBlob()}if(this.videoRecorder){b.video=this.videoRecorder.getBlob()}if(this.gifRecorder){b.gif=this.gifRecorder.getBlob()}if(c){c(b)}return b};this.getDataURL=function(d){this.getBlob(function(e){b(e.audio,function(f){b(e.video,function(g){d({audio:f,video:g})})})});function b(h,i){if(typeof Worker!=="undefined"){var g=c(function f(j){postMessage(new FileReaderSync().readAsDataURL(j))});g.onmessage=function(j){i(j.data)};g.postMessage(h)}else{var e=new FileReader();e.readAsDataURL(h);e.onload=function(j){i(j.target.result)}}}function c(e){var f=URL.createObjectURL(new Blob([e.toString(),"this.onmessage =  function (e) {"+e.name+"(e.data);}"],{type:"application/javascript"}));var h=new Worker(f);var g;if(typeof URL!=="undefined"){g=URL}else{if(typeof webkitURL!=="undefined"){g=webkitURL}else{throw"Neither URL nor webkitURL detected."}}g.revokeObjectURL(f);return h}};this.writeToDisk=function(){RecordRTC.writeToDisk({audio:this.audioRecorder,video:this.videoRecorder,gif:this.gifRecorder})};this.save=function(b){b=b||{audio:true,video:true,gif:true};if(!!b.audio&&this.audioRecorder){this.audioRecorder.save(typeof b.audio==="string"?b.audio:"")}if(!!b.video&&this.videoRecorder){this.videoRecorder.save(typeof b.video==="string"?b.video:"")}if(!!b.gif&&this.gifRecorder){this.gifRecorder.save(typeof b.gif==="string"?b.gif:"")}}}MRecordRTC.getFromDisk=RecordRTC.getFromDisk;MRecordRTC.writeToDisk=RecordRTC.writeToDisk;var requestAnimationFrame=window.requestAnimationFrame;if(typeof requestAnimationFrame==="undefined"){if(typeof webkitRequestAnimationFrame!=="undefined"){requestAnimationFrame=webkitRequestAnimationFrame}if(typeof mozRequestAnimationFrame!=="undefined"){requestAnimationFrame=mozRequestAnimationFrame}}var cancelAnimationFrame=window.cancelAnimationFrame;if(typeof cancelAnimationFrame==="undefined"){if(typeof webkitCancelAnimationFrame!=="undefined"){cancelAnimationFrame=webkitCancelAnimationFrame
}if(typeof mozCancelAnimationFrame!=="undefined"){cancelAnimationFrame=mozCancelAnimationFrame}}var AudioContext=window.AudioContext;if(typeof AudioContext==="undefined"){if(typeof webkitAudioContext!=="undefined"){AudioContext=webkitAudioContext}if(typeof mozAudioContext!=="undefined"){AudioContext=mozAudioContext}}var URL=window.URL;if(typeof URL==="undefined"&&typeof webkitURL!=="undefined"){URL=webkitURL}if(typeof navigator!=="undefined"){if(typeof navigator.webkitGetUserMedia!=="undefined"){navigator.getUserMedia=navigator.webkitGetUserMedia}if(typeof navigator.mozGetUserMedia!=="undefined"){navigator.getUserMedia=navigator.mozGetUserMedia}}else{throw'Please make sure to define a global variable named as "navigator"'}var isEdge=navigator.userAgent.indexOf("Edge")!==-1&&(!!navigator.msSaveBlob||!!navigator.msSaveOrOpenBlob);var isOpera=!!window.opera||navigator.userAgent.indexOf("OPR/")!==-1;var isChrome=!isOpera&&!isEdge&&!!navigator.webkitGetUserMedia;var MediaStream=window.MediaStream;if(typeof MediaStream==="undefined"&&typeof webkitMediaStream!=="undefined"){MediaStream=webkitMediaStream}if(typeof MediaStream!=="undefined"&&!("stop" in MediaStream.prototype)){MediaStream.prototype.stop=function(){if(!this.getAudioTracks&&!!this.getTracks){this.getAudioTracks=function(){var a=[];this.getTracks.forEach(function(b){if(b.kind.toString().indexOf("audio")!==-1){a.push(b)}});return a}}if(!this.getVideoTracks&&!!this.getTracks){this.getVideoTracks=function(){var a=[];this.getTracks.forEach(function(b){if(b.kind.toString().indexOf("video")!==-1){a.push(b)}});return a}}this.getAudioTracks().forEach(function(a){a.stop()});this.getVideoTracks().forEach(function(a){a.stop()})}}if(typeof location!=="undefined"){if(location.href.indexOf("file:")===0){console.error("Please load this HTML file on HTTP or HTTPS.")}}function bytesToSize(a){var b=1000;var d=["Bytes","KB","MB","GB","TB"];if(a===0){return"0 Bytes"}var c=parseInt(Math.floor(Math.log(a)/Math.log(b)),10);return(a/Math.pow(b,c)).toPrecision(3)+" "+d[c]}function invokeSaveAsDialog(b,g){if(!b){throw"Blob object is required."}if(!b.type){b.type="video/webm"}var d=b.type.split("/")[1];if(g&&g.indexOf(".")!==-1){var f=g.split(".");g=f[0];d=f[1]}var c=(g||(Math.round(Math.random()*9999999999)+888888888))+"."+d;if(typeof navigator.msSaveOrOpenBlob!=="undefined"){return navigator.msSaveOrOpenBlob(b,c)}else{if(typeof navigator.msSaveBlob!=="undefined"){return navigator.msSaveBlob(b,c)}}var e=document.createElement("a");e.href=URL.createObjectURL(b);e.target="_blank";e.download=c;if(!!navigator.mozGetUserMedia){e.onclick=function(){(document.body||document.documentElement).removeChild(e)};(document.body||document.documentElement).appendChild(e)}var a=new MouseEvent("click",{view:window,bubbles:true,cancelable:true});e.dispatchEvent(a);if(!navigator.mozGetUserMedia){URL.revokeObjectURL(e.href)}}var Storage={};if(typeof AudioContext!=="undefined"){Storage.AudioContext=AudioContext}else{if(typeof webkitAudioContext!=="undefined"){Storage.AudioContext=webkitAudioContext}}function isMediaRecorderCompatible(){var c=!!window.opera||navigator.userAgent.indexOf(" OPR/")>=0;var a=!!window.chrome&&!c;var b=typeof window.InstallTrigger!=="undefined";if(b){return true}if(!a){return false}var i=navigator.appVersion;var g=navigator.userAgent;var h=""+parseFloat(navigator.appVersion);var f=parseInt(navigator.appVersion,10);var j,d,e;if(a){d=g.indexOf("Chrome");h=g.substring(d+7)}if((e=h.indexOf(";"))!==-1){h=h.substring(0,e)}if((e=h.indexOf(" "))!==-1){h=h.substring(0,e)}f=parseInt(""+h,10);if(isNaN(f)){h=""+parseFloat(navigator.appVersion);f=parseInt(navigator.appVersion,10)}return f>=49}function MediaStreamRecorder(j,d){var i=this;d=d||{mimeType:"video/webm"};if(d.type==="audio"){if(j.getVideoTracks().length&&j.getAudioTracks().length){var h;if(!!navigator.mozGetUserMedia){h=new MediaStream();h.addTrack(j.getAudioTracks()[0])}else{h=new MediaStream(j.getAudioTracks())}j=h}if(!d.mimeType||d.mimeType.indexOf("audio")===-1){d.mimeType=isChrome?"audio/webm":"audio/ogg"}}var a=[];this.record=function(){var k=d;if(!d.disableLogs){console.log("Passing following config over MediaRecorder API.",k)}if(c){c=null}if(isChrome&&!isMediaRecorderCompatible()){k="video/vp8"}c=new MediaRecorder(j,k);if("canRecordMimeType" in c&&c.canRecordMimeType(d.mimeType)===false){if(!d.disableLogs){console.warn("MediaRecorder API seems unable to record mimeType:",d.mimeType)}}c.ignoreMutedMedia=d.ignoreMutedMedia||false;c.ondataavailable=function(l){if(i.dontFireOnDataAvailableEvent){return}if(!l.data||!l.data.size){return}a.push(l.data)};c.onerror=function(l){if(!d.disableLogs){if(l.name==="InvalidState"){console.error("The MediaRecorder is not in a state in which the proposed operation is allowed to be executed.")}else{if(l.name==="OutOfMemory"){console.error("The UA has exhaused the available memory. User agents SHOULD provide as much additional information as possible in the message attribute.")}else{if(l.name==="IllegalStreamModification"){console.error("A modification to the stream has occurred that makes it impossible to continue recording. An example would be the addition of a Track while recording is occurring. User agents SHOULD provide as much additional information as possible in the message attribute.")
}else{if(l.name==="OtherRecordingError"){console.error("Used for an fatal error other than those listed above. User agents SHOULD provide as much additional information as possible in the message attribute.")}else{if(l.name==="GenericError"){console.error("The UA cannot provide the codec or recording option that has been requested.",l)}else{console.error("MediaRecorder Error",l)}}}}}}if(c.state!=="inactive"&&c.state!=="stopped"){c.stop()}};c.start(1);if(d.onAudioProcessStarted){d.onAudioProcessStarted()}if(d.initCallback){d.initCallback()}};function b(l,n){var m=new Blob(l,{type:"video/webm"});var k=new FileReader();k.onload=function(){n(k.result)};k.readAsDataURL(m)}function e(n){var o=atob(n.split(",")[1]),m=[];for(var l=0;l<o.length;l++){m.push(o.charCodeAt(l))}var k=window.File||window.Blob;return new k([new Uint8Array(m)],"recorded-video.webm",{type:"video/webm"})}this.stop=function(k){if(!c){return}this.recordingCallback=k||function(){};if(c.state==="recording"){c.requestData();c.stop()}if(a.length){this.onRecordingFinished()}};this.onRecordingFinished=function(){var k=this;b(a,function(m){var l=e(m);k.blob=new Blob(a,{type:d.mimeType||"video/webm"});k.recordingCallback();a=[]})};this.pause=function(){if(!c){return}if(c.state==="recording"){c.pause()}};this.resume=function(){if(this.dontFireOnDataAvailableEvent){this.dontFireOnDataAvailableEvent=false;var k=d.disableLogs;d.disableLogs=true;this.record();d.disableLogs=k;return}if(!c){return}if(c.state==="paused"){c.resume()}};this.clearRecordedData=function(){if(!c){return}this.pause();this.dontFireOnDataAvailableEvent=true;this.stop()};var c;function f(){if("active" in j){if(!j.active){return false}}else{if("ended" in j){if(j.ended){return false}}}}var i=this;(function g(){if(!c){return}if(f()===false){i.stop();return}setTimeout(g,1000)})()}function StereoAudioRecorder(o,s){if(!o.getAudioTracks().length){throw"Your stream has no audio tracks."}s=s||{};var l=this;var j=[];var p=[];var a=false;var m=0;var r;var q=2;if(s.leftChannel===true){q=1}if(s.numberOfAudioChannels===1){q=1}if(!s.disableLogs){console.debug("StereoAudioRecorder is set to record number of channels: ",q)}function c(){if("active" in o){if(!o.active){return false}}else{if("ended" in o){if(o.ended){return false}}}}this.record=function(){if(c()===false){throw"Please make sure MediaStream is active."}j.length=p.length=0;m=0;if(i){i.connect(r)}h=g=false;a=true};function t(w,x){function v(P,J){var O=P.numberOfAudioChannels;var G=P.leftBuffers.slice(0);var C=P.rightBuffers.slice(0);var z=P.sampleRate;var K=P.internalInterleavedLength;if(O===2){G=B(G,K);C=B(C,K)}if(O===1){G=B(G,K)}function B(V,W){var R=new Float64Array(W);var X=0;var T=V.length;for(var U=0;U<T;U++){var S=V[U];R.set(S,X);X+=S.length}return R}function I(T,S){var V=T.length+S.length;var R=new Float64Array(V);var W=0;for(var U=0;U<V;){R[U++]=T[W];R[U++]=S[W];W++}return R}function A(R,V,T){var S=T.length;for(var U=0;U<S;U++){R.setUint8(V+U,T.charCodeAt(U))}}var H;if(O===2){H=I(G,C)}if(O===1){H=G}var y=H.length;var D=44+y*2;var L=new ArrayBuffer(D);var F=new DataView(L);A(F,0,"RIFF");F.setUint32(4,44+y*2,true);A(F,8,"WAVE");A(F,12,"fmt ");F.setUint32(16,16,true);F.setUint16(20,1,true);F.setUint16(22,O,true);F.setUint32(24,z,true);F.setUint32(28,z*2,true);F.setUint16(32,O*2,true);F.setUint16(34,16,true);A(F,36,"data");F.setUint32(40,y*2,true);var Q=y;var E=44;var N=1;for(var M=0;M<Q;M++){F.setInt16(E,H[M]*(32767*N),true);E+=2}if(J){return J({buffer:L,view:F})}postMessage({buffer:L,view:F})}if(!isChrome){v(w,function(y){x(y.buffer,y.view)});return}var u=b(v);u.onmessage=function(y){x(y.data.buffer,y.data.view);URL.revokeObjectURL(u.workerURL)};u.postMessage(w)}function b(u){var v=URL.createObjectURL(new Blob([u.toString(),";this.onmessage =  function (e) {"+u.name+"(e.data);}"],{type:"application/javascript"}));var w=new Worker(v);w.workerURL=v;return w}this.stop=function(u){a=false;t({sampleRate:e,numberOfAudioChannels:q,internalInterleavedLength:m,leftBuffers:j,rightBuffers:q===1?[]:p},function(w,v){l.blob=new Blob([v],{type:"audio/wav"});l.buffer=new ArrayBuffer(v);l.view=v;l.sampleRate=e;l.bufferSize=f;l.length=m;if(u){u()}h=false})};if(!Storage.AudioContextConstructor){Storage.AudioContextConstructor=new Storage.AudioContext()}var d=Storage.AudioContextConstructor;var i=d.createMediaStreamSource(o);var n=[0,256,512,1024,2048,4096,8192,16384];var f=typeof s.bufferSize==="undefined"?4096:s.bufferSize;if(n.indexOf(f)===-1){if(!s.disableLogs){console.warn("Legal values for buffer-size are "+JSON.stringify(n,null,"\t"))}}if(d.createJavaScriptNode){r=d.createJavaScriptNode(f,q,q)}else{if(d.createScriptProcessor){r=d.createScriptProcessor(f,q,q)}else{throw"WebAudio API has no support on this browser."}}i.connect(r);if(!s.bufferSize){f=r.bufferSize}var e=typeof s.sampleRate!=="undefined"?s.sampleRate:d.sampleRate||44100;if(e<22050||e>96000){if(!s.disableLogs){console.warn("sample-rate must be under range 22050 and 96000.")}}if(!s.disableLogs){console.log("sample-rate",e);
    console.log("buffer-size",f)}var g=false;this.pause=function(){g=true};this.resume=function(){if(c()===false){throw"Please make sure MediaStream is active."}if(!a){if(!s.disableLogs){console.info("Seems recording has been restarted.")}this.record();return}g=false};this.clearRecordedData=function(){this.pause();j.length=p.length=0;m=0};var h=false;function k(w){if(g){return}if(c()===false){if(!s.disableLogs){console.error("MediaStream seems stopped.")}r.disconnect();a=false}if(!a){i.disconnect();return}if(!h){h=true;if(s.onAudioProcessStarted){s.onAudioProcessStarted()}if(s.initCallback){s.initCallback()}}var v=w.inputBuffer.getChannelData(0);j.push(new Float32Array(v));if(q===2){var u=w.inputBuffer.getChannelData(1);p.push(new Float32Array(u))}m+=f}r.onaudioprocess=k;r.connect(d.destination)}function CanvasRecorder(d,c){if(typeof html2canvas==="undefined"&&d.nodeName.toLowerCase()!=="canvas"){throw"Please link: //cdn.webrtc-experiment.com/screenshot.js"}c=c||{};if(!c.frameInterval){c.frameInterval=10}var g=false;["captureStream","mozCaptureStream","webkitCaptureStream"].forEach(function(m){if(m in document.createElement("canvas")){g=true}});if(!!window.webkitRTCPeerConnection||!!window.webkitGetUserMedia){g=false}var e,i,l;if(g){if(!c.disableLogs){console.debug("Your browser supports both MediRecorder API and canvas.captureStream!")}e=document.createElement("canvas");e.width=d.clientWidth||window.innerWidth;e.height=d.clientHeight||window.innerHeight;e.style="top: -9999999; left: -99999999; visibility:hidden; position:absoluted; display: none;";(document.body||document.documentElement).appendChild(e);i=e.getContext("2d")}else{if(!!navigator.mozGetUserMedia){if(!c.disableLogs){alert("Canvas recording is NOT supported in Firefox.")}}}var b;this.record=function(){b=true;if(g){var m;if("captureStream" in e){m=e.captureStream(25)}else{if("mozCaptureStream" in e){m=e.captureStream(25)}else{if("webkitCaptureStream" in e){m=e.captureStream(25)}}}try{var n=new MediaStream();n.addTrack(m.getVideoTracks()[0]);m=n}catch(o){}if(!m){throw"captureStream API are NOT available."}l=new MediaStreamRecorder(m,{mimeType:"video/webm"});l.record()}else{h.frames=[];a=new Date().getTime();k()}if(c.initCallback){c.initCallback()}};this.getWebPImages=function(n){if(d.nodeName.toLowerCase()!=="canvas"){n();return}var m=h.frames.length;h.frames.forEach(function(r,o){var q=m-o;document.title=q+"/"+m+" frames remaining";if(c.onEncodingCallback){c.onEncodingCallback(q,m)}var p=r.image.toDataURL("image/webp",1);h.frames[o].image=p});document.title="Generating WebM";n()};this.stop=function(o){b=false;var n=this;if(g&&l){var m=this;l.stop(function(){for(var p in l){self[p]=l[p]}if(o){o(n.blob)}});return}this.getWebPImages(function(){h.compile(function(p){document.title="Recording finished!";n.blob=p;if(n.blob.forEach){n.blob=new Blob([],{type:"video/webm"})}if(o){o(n.blob)}h.frames=[]})})};var f=false;this.pause=function(){f=true};this.resume=function(){f=false};this.clearRecordedData=function(){this.pause();h.frames=[]};function j(){var n=document.createElement("canvas");var m=n.getContext("2d");n.width=d.width;n.height=d.height;m.drawImage(d,0,0);return n}function k(){if(f){a=new Date().getTime();return setTimeout(k,500)}if(d.nodeName.toLowerCase()==="canvas"){var m=new Date().getTime()-a;a=new Date().getTime();h.frames.push({image:j(),duration:m});if(b){setTimeout(k,c.frameInterval)}return}html2canvas(d,{grabMouse:typeof c.showMousePointer==="undefined"||c.showMousePointer,onrendered:function(n){var o=new Date().getTime()-a;if(!o){return setTimeout(k,c.frameInterval)}a=new Date().getTime();h.frames.push({image:n.toDataURL("image/webp",1),duration:o});if(b){setTimeout(k,c.frameInterval)}}})}var a=new Date().getTime();var h=new Whammy.Video(100)}function WhammyRecorder(k,e){e=e||{};if(!e.frameInterval){e.frameInterval=10}if(!e.disableLogs){console.log("Using frames-interval:",e.frameInterval)}this.record=function(){if(!e.width){e.width=320}if(!e.height){e.height=240}if(!e.video){e.video={width:e.width,height:e.height}}if(!e.canvas){e.canvas={width:e.width,height:e.height}}d.width=e.canvas.width;d.height=e.canvas.height;c=d.getContext("2d");if(e.video&&e.video instanceof HTMLVideoElement){b=e.video.cloneNode();if(e.initCallback){e.initCallback()}}else{b=document.createElement("video");if(typeof b.srcObject!=="undefined"){b.srcObject=k}else{b.src=URL.createObjectURL(k)}b.onloadedmetadata=function(){if(e.initCallback){e.initCallback()}};b.width=e.video.width;b.height=e.video.height}b.muted=true;b.play();a=new Date().getTime();j=new Whammy.Video();if(!e.disableLogs){console.log("canvas resolutions",d.width,"*",d.height);console.log("video width/height",b.width||d.width,"*",b.height||d.height)}g(e.frameInterval)};function g(m){m=typeof m!=="undefined"?m:10;var n=new Date().getTime()-a;if(!n){return setTimeout(g,m,m)}if(h){a=new Date().getTime();return setTimeout(g,100)}a=new Date().getTime();if(b.paused){b.play()}c.drawImage(b,0,0,d.width,d.height);
    j.frames.push({duration:n,image:d.toDataURL("image/webp")});if(!i){setTimeout(g,m,m)}}function l(q){var n=-1,p=q.length;var m=function(){n++;if(n===p){q.callback();return}q.functionToLoop(m,n)};m()}function f(m,n,y,p,z){var t=document.createElement("canvas");t.width=d.width;t.height=d.height;var o=t.getContext("2d");var q=[];var s=n===-1;var u=(n&&n>0&&n<=m.length)?n:m.length;var r={r:0,g:0,b:0};var A=Math.sqrt(Math.pow(255,2)+Math.pow(255,2)+Math.pow(255,2));var x=y&&y>=0&&y<=1?y:0;var v=p&&p>=0&&p<=1?p:0;var w=false;l({length:u,functionToLoop:function(B,E){var D,H,C;var G=function(){if(!w&&C-D<=C*v){}else{if(s){w=true}q.push(m[E])}B()};if(!w){var F=new Image();F.onload=function(){o.drawImage(F,0,0,d.width,d.height);var L=o.getImageData(0,0,d.width,d.height);D=0;H=L.data.length;C=L.data.length/4;for(var J=0;J<H;J+=4){var I={r:L.data[J],g:L.data[J+1],b:L.data[J+2]};var K=Math.sqrt(Math.pow(I.r-r.r,2)+Math.pow(I.g-r.g,2)+Math.pow(I.b-r.b,2));if(K<=A*x){D++}}G()};F.src=m[E].image}else{G()}},callback:function(){q=q.concat(m.slice(u));if(q.length<=0){q.push(m[m.length-1])}z(q)}})}var i=false;this.stop=function(n){i=true;var m=this;setTimeout(function(){f(j.frames,-1,null,null,function(o){j.frames=o;if(e.advertisement&&e.advertisement.length){j.frames=e.advertisement.concat(j.frames)}j.compile(function(p){m.blob=p;if(m.blob.forEach){m.blob=new Blob([],{type:"video/webm"})}if(n){n(m.blob)}})})},10)};var h=false;this.pause=function(){h=true};this.resume=function(){h=false};this.clearRecordedData=function(){this.pause();j.frames=[]};var d=document.createElement("canvas");var c=d.getContext("2d");var b;var a;var j}var Whammy=(function(){function b(d){this.frames=[];this.duration=d||1;this.quality=0.8}b.prototype.add=function(e,d){if("canvas" in e){e=e.canvas}if("toDataURL" in e){e=e.toDataURL("image/webp",this.quality)}if(!(/^data:image\/webp;base64,/ig).test(e)){throw"Input must be formatted properly as a base64 encoded DataURI of type image/webp"}this.frames.push({image:e,duration:d||this.duration})};function c(d){var e=URL.createObjectURL(new Blob([d.toString(),"this.onmessage =  function (e) {"+d.name+"(e.data);}"],{type:"application/javascript"}));var f=new Worker(e);URL.revokeObjectURL(e);return f}function a(o){function j(y){var v=p(y);if(!v){return[]}var s=30000;var w=[{"id":440786851,"data":[{"data":1,"id":17030},{"data":1,"id":17143},{"data":4,"id":17138},{"data":8,"id":17139},{"data":"webm","id":17026},{"data":2,"id":17031},{"data":2,"id":17029}]},{"id":408125543,"data":[{"id":357149030,"data":[{"data":1000000,"id":2807729},{"data":"whammy","id":19840},{"data":"whammy","id":22337},{"data":d(v.duration),"id":17545}]},{"id":374648427,"data":[{"id":174,"data":[{"data":1,"id":215},{"data":1,"id":29637},{"data":0,"id":156},{"data":"und","id":2274716},{"data":"V_VP8","id":134},{"data":"VP8","id":2459272},{"data":1,"id":131},{"id":224,"data":[{"data":v.width,"id":176},{"data":v.height,"id":186}]}]}]}]}];var z=0;var B=0;while(z<y.length){var x=[];var u=0;do{x.push(y[z]);u+=y[z].duration;z++}while(z<y.length&&u<s);var t=0;var A={"id":524531317,"data":i(B,t,x)};w[1].data.push(A);B+=u}return q(w)}function i(t,u,s){return[{"data":t,"id":231}].concat(s.map(function(v){var w=r({discardable:0,frame:v.data.slice(4),invisible:0,keyframe:1,lacing:0,trackNum:1,timecode:Math.round(u)});u+=v.duration;return{data:w,id:163}}))}function p(w){if(!w[0]){postMessage({error:"Something went wrong. Maybe WebP format is not supported in the current browser."});return}var u=w[0].width,s=w[0].height,v=w[0].duration;for(var t=1;t<w.length;t++){v+=w[t].duration}return{duration:v,width:u,height:s}}function f(s){var t=[];while(s>0){t.push(s&255);s=s>>8}return new Uint8Array(t.reverse())}function m(s){return new Uint8Array(s.split("").map(function(t){return t.charCodeAt(0)}))}function h(u){var t=[];var v=(u.length%8)?(new Array(1+8-(u.length%8))).join("0"):"";u=v+u;for(var s=0;s<u.length;s+=8){t.push(parseInt(u.substr(s,8),2))}return new Uint8Array(t)}function q(z){var u=[];for(var w=0;w<z.length;w++){var v=z[w].data;if(typeof v==="object"){v=q(v)}if(typeof v==="number"){v=h(v.toString(2))}if(typeof v==="string"){v=m(v)}var x=v.size||v.byteLength||v.length;var y=Math.ceil(Math.ceil(Math.log(x)/Math.log(2))/8);var s=x.toString(2);var t=(new Array((y*7+7+1)-s.length)).join("0")+s;var A=(new Array(y)).join("0")+"1"+t;u.push(f(z[w].id));u.push(h(A));u.push(v)}return new Blob(u,{type:"video/webm"})}function l(u){var t="";var v=(u.length%8)?(new Array(1+8-(u.length%8))).join("0"):"";u=v+u;for(var s=0;s<u.length;s+=8){t+=String.fromCharCode(parseInt(u.substr(s,8),2))}return t}function r(u){var s=0;if(u.keyframe){s|=128}if(u.invisible){s|=8}if(u.lacing){s|=(u.lacing<<1)}if(u.discardable){s|=1}if(u.trackNum>127){throw"TrackNumber > 127 not supported"}var t=[u.trackNum|128,u.timecode>>8,u.timecode&255,s].map(function(v){return String.fromCharCode(v)}).join("")+u.frame;return t}function g(z){var t=z.RIFF[0].WEBP[0];var x=t.indexOf("\x9d\x01\x2a");for(var v=0,y=[];
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         v<4;v++){y[v]=t.charCodeAt(x+3+v)}var w,s,u;u=(y[1]<<8)|y[0];w=u&16383;u=(y[3]<<8)|y[2];s=u&16383;return{width:w,height:s,data:t,riff:z}}function n(s,t){return parseInt(s.substr(t+4,4).split("").map(function(u){var v=u.charCodeAt(0).toString(2);return(new Array(8-v.length+1)).join("0")+v}).join(""),2)}function k(t){var v=0;var x={};while(v<t.length){var w=t.substr(v,4);var s=n(t,v);var u=t.substr(v+4+4,s);v+=4+4+s;x[w]=x[w]||[];if(w==="RIFF"||w==="LIST"){x[w].push(k(u))}else{x[w].push(u)}}return x}function d(s){return[].slice.call(new Uint8Array((new Float64Array([s])).buffer),0).map(function(t){return String.fromCharCode(t)}).reverse().join("")}var e=new j(o.map(function(t){var s=g(k(atob(t.image.slice(23))));s.duration=t.duration;return s}));postMessage(e)}b.prototype.compile=function(e){var d=c(a);d.onmessage=function(f){if(f.data.error){console.error(f.data.error);return}e(f.data)};d.postMessage(this.frames)};return{Video:b}})();var DiskStorage={init:function(){var b=this;if(typeof indexedDB==="undefined"||typeof indexedDB.open==="undefined"){console.error("IndexedDB API are not available in this browser.");return}if(typeof webkitIndexedDB!=="undefined"){indexedDB=webkitIndexedDB}if(typeof mozIndexedDB!=="undefined"){indexedDB=mozIndexedDB}if(typeof OIndexedDB!=="undefined"){indexedDB=OIndexedDB}if(typeof msIndexedDB!=="undefined"){indexedDB=msIndexedDB}var c=1;var f=this.dbName||location.href.replace(/\/|:|#|%|\.|\[|\]/g,""),a;var e=indexedDB.open(f,c);function d(h){h.createObjectStore(b.dataStoreName)}function g(){var i=a.transaction([b.dataStoreName],"readwrite");if(b.videoBlob){i.objectStore(b.dataStoreName).put(b.videoBlob,"videoBlob")}if(b.gifBlob){i.objectStore(b.dataStoreName).put(b.gifBlob,"gifBlob")}if(b.audioBlob){i.objectStore(b.dataStoreName).put(b.audioBlob,"audioBlob")}function h(j){i.objectStore(b.dataStoreName).get(j).onsuccess=function(k){if(b.callback){b.callback(k.target.result,j)}}}h("audioBlob");h("videoBlob");h("gifBlob")}e.onerror=b.onError;e.onsuccess=function(){a=e.result;a.onerror=b.onError;if(a.setVersion){if(a.version!==c){var h=a.setVersion(c);h.onsuccess=function(){d(a);g()}}else{g()}}else{g()}};e.onupgradeneeded=function(h){d(h.target.result)}},Fetch:function(a){this.callback=a;this.init();return this},Store:function(a){this.audioBlob=a.audioBlob;this.videoBlob=a.videoBlob;this.gifBlob=a.gifBlob;this.init();return this},onError:function(a){console.error(JSON.stringify(a,null,"\t"))},dataStoreName:"recordRTC",dbName:null};function GifRecorder(l,e){if(typeof GIFEncoder==="undefined"){throw"Please link: https://cdn.webrtc-experiment.com/gif-recorder.js"}e=e||{};var h=l instanceof CanvasRenderingContext2D||l instanceof HTMLCanvasElement;this.record=function(){if(!h){if(!e.width){e.width=a.offsetWidth||320}if(!this.height){e.height=a.offsetHeight||240}if(!e.video){e.video={width:e.width,height:e.height}}if(!e.canvas){e.canvas={width:e.width,height:e.height}}d.width=e.canvas.width;d.height=e.canvas.height;a.width=e.video.width;a.height=e.video.height}i=new GIFEncoder();i.setRepeat(0);i.setDelay(e.frameRate||200);i.setQuality(e.quality||10);i.start();c=Date.now();var m=this;function n(o){if(f){return setTimeout(function(){n(o)},100)}j=requestAnimationFrame(n);if(typeof k===undefined){k=o}if(o-k<90){return}if(!h&&a.paused){a.play()}b.drawImage(a,0,0,d.width,d.height);if(e.onGifPreview){e.onGifPreview(d.toDataURL("image/png"))}i.addFrame(b);k=o}j=requestAnimationFrame(n);if(e.initCallback){e.initCallback()}};this.stop=function(){if(j){cancelAnimationFrame(j)}g=Date.now();this.blob=new Blob([new Uint8Array(i.stream().bin)],{type:"image/gif"});i.stream().bin=[]};var f=false;this.pause=function(){f=true};this.resume=function(){f=false};this.clearRecordedData=function(){if(!i){return}this.pause();i.stream().bin=[]};var d=document.createElement("canvas");var b=d.getContext("2d");if(h){if(l instanceof CanvasRenderingContext2D){b=l}else{if(l instanceof HTMLCanvasElement){b=l.getContext("2d")}}}if(!h){var a=document.createElement("video");a.muted=true;a.autoplay=true;if(typeof a.srcObject!=="undefined"){a.srcObject=l}else{a.src=URL.createObjectURL(l)}a.play()}var j=null;var c,g,k;var i};