hooks
style 
	 ^ super style ,'
p {
	text-align: center;
}

#login
{
	width: 570px;
	margin: 0 auto;
	padding: 30px;
}

.loginTitle
{
    text-shadow: 0 1px 0 rgba(255, 255, 255, .7), 0px 2px 0 rgba(0, 0, 0, .5);
    text-transform: uppercase;
    text-align: center;
    color: #666;
    margin: 0 0 30px 0;
    letter-spacing: 4px;
    font: normal 26px/1 Verdana, Helvetica;
    position: relative;
}

.loginTitle:after, .loginTitle:before
{
    background-color: #777;
    content: "";
    height: 1px;
    position: absolute;
    top: 15px;
    width: 120px; 
}

.loginTitle:after
{ 
    background-image: -webkit-gradient(linear, left top, right top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(left, #777, #fff);
    background-image: -moz-linear-gradient(left, #777, #fff);
    background-image: -ms-linear-gradient(left, #777, #fff);
    background-image: -o-linear-gradient(left, #777, #fff);
    background-image: linear-gradient(left, #777, #fff);      
    right: 0;
}

.loginTitle:before
{
    background-image: -webkit-gradient(linear, right top, left top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(right, #777, #fff);
    background-image: -moz-linear-gradient(right, #777, #fff);
    background-image: -ms-linear-gradient(right, #777, #fff);
    background-image: -o-linear-gradient(right, #777, #fff);
    background-image: linear-gradient(right, #777, #fff);
    left: 0;
}

fieldset
{
    border: 0;
    padding: 0;
    margin: 0;
}


#codigo_seguridad
{
	 font: normal 24px/1 Aerial, Helvetica;
}


.code_text {
	font-size: 30px;
	display: inline;
	margin-right: 27px;
	text-transform: uppercase;
	color: #333; 
	text-shadow: 1px 1px 0 white;
	cursor:pointer;
}

.code_text:active{
	text-shadow: 1px 1px 10px #FFFF05;
}

#code_input_1, #code_input_2, #code_input_3, #code_input_4 , #submit, fieldset
{
visibility:hidden;
}
'