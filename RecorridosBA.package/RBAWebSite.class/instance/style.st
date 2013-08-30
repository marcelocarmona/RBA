hooks
style
	^ '
@font-face {
  font-family: "Chivo";
  font-style: normal;
  font-weight: 400;
  src: local("Chivo"), local("Chivo-Regular"), url(http://themes.googleusercontent.com/static/fonts/chivo/v4/GhipLm6QPHeaA8ybMizMsKCWcynf_cDxXwCLxiixG1c.woff) format("woff");
}

body, html {
	font-family: Chivo, Verdana, arial, sans-serif;
	font-size: 13px;
	background: #ECEBE8 url("../../files/RoutesFileLibrary/home-background.png") repeat 0 0;
	border: 0;
	padding: 0;
	margin: 0;
}

hr {
	height: 1px;
	background: #ACACAC;
	border: 1px;
}

fieldset
{
    border: 0;
    padding: 0;
    margin: 0;
}

#process {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: black;
	opacity: 0.7;
}	

#processInfo {
	display: none;
	position: fixed;
	z-index: 10000;
	background: white;
	padding: 10px;
	border-radius: 8px;
}	

#processInfo div {
	float: left;
}

#processText {
	margin-left: 5px;
	margin-top: 3px;
}

#processImage {
	background-image: url("../../files/RoutesFileLibrary/loadinfo.gif");
	height: 24px;
	width: 24px;
}

#header {
	background-color: #474747;
	height: 45px;
	margin: 0;
	font-size: 18px;
	color: #aaa;
	box-shadow: 0px 2px 2px #202020;
	box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.67);
	background-image: linear-gradient(bottom, rgb(51,51,51) 89%, rgb(0,0,0) 0%);
	background-image: -o-linear-gradient(bottom, rgb(51,51,51) 89%, rgb(0,0,0) 0%);
	background-image: -moz-linear-gradient(bottom, rgb(51,51,51) 89%, rgb(0,0,0) 0%);
	background-image: -webkit-linear-gradient(bottom, rgb(51,51,51) 89%, rgb(0,0,0) 0%);
	background-image: -ms-linear-gradient(bottom, rgb(51,51,51) 89%, rgb(0,0,0) 0%);
	background-image: -webkit-gradient(
		linear,
		left bottom,
		left top,
		color-stop(0.89, rgb(51,51,51)),
		color-stop(0, rgb(0,0,0))
	);
	position: relative;
}

#logo a {
	font-size: 35px;
	text-decoration: none;
	color: rgba(252, 252, 11, 0.74);
	display: block;
	float: left;
}

#sublogo  {
	margin: 10px;
	float: left;
}

#welcome  {
	margin: 8px 0 0 150px;
	background-color: rgba(99, 99, 99, 0.22);
	border-radius: 5px;
	padding: 2px 10px;
	float: left;
	border: 1px solid black;
	box-shadow: 1px -1px 1px black;
	text-shadow: 2px 1px 2px black;
}

#header ul {
	float: right;
	margin: 0;
	padding:0;
	border-right: 1px solid rgba(255, 255, 255, 0.0976562);
	border-left: 1px solid rgba(0, 0, 0, 0.347656);
}

#header  li {
	font-family: arial;
	height: 35px;
	margin: 0;
	padding-top: 10px;
	float: left;
	display: block;
	position: relative;
	border-left: 1px solid rgba(255, 255, 255, 0.0976562);
	border-right: 1px solid rgba(0, 0, 0, 0.347656);
}

#header li a {
	padding: 15px;
	text-decoration: none;
	color:#aaa;
}

#header li a:hover {
	color:white;
}


#header  li:hover {
	background-color: rgba(255, 255, 255, 0.04);
	color: white;
}

#menu {
	clear: both;
}

#mainContent {
	margin: 0 auto;
	width: 1000px;
	overflow: hidden;
	border-right: 1px solid #CCC;
	border-left: 1px solid #CCC;
	background: #ECEBE8 url("../../files/RoutesFileLibrary/home-background-dark.png") repeat 0 0;
	padding: 10px;
	box-shadow: -1px 0 6px rgba(0, 0, 0, 0.2),1px 0 6px rgba(0, 0, 0, 0.2);
	min-height: 100%;

}

.wrapper {
	margin: 0 auto;
	width: 1020px;
	position: relative;
}

.box {
	background: none repeat scroll 0 0 #EEE;
	border-radius: 5px;
	padding: 1px 10px 10px 10px;
	margin: 0px 0px 10px;
	box-shadow: 0px 0 1px rgba(0, 0, 0, 0.2),1px 0 6px rgba(0, 0, 0, 0.2);
	border: 1px solid #CCC;
}

.box h1 {
	font-size: 18px;
}
'