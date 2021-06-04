<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accessing camera</title>
<style>
#container {
	margin: 0px auto;
	width: 519px;
	height: 393px;
	border: 10px #333 solid;
}
#videoElement {
	width: 500px;
	height: 375px;
	background-color: #666;
}
</style>
<jsp:include page="Library.html"></jsp:include>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

 
<div id="container">
	<video autoplay="true" id="videoElement">
	
	</video>
</div>
<script>
var video = document.querySelector("#videoElement");

if (navigator.mediaDevices.getUserMedia) {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      video.srcObject = stream;
    })
    .catch(function (err0r) {
      console.log("Something went wrong!");
    });
}

function stop(e) {
	  var stream = video.srcObject;
	  var tracks = stream.getTracks();

	  for (var i = 0; i < tracks.length; i++) {
	    var track = tracks[i];
	    track.stop();
	  }

	  video.srcObject = null;
	}
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>