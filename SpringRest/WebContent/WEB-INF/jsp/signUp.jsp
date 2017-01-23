<html>
<head>
<title>Sign Up</title>
<style type="text/css">
body {
	background-image: url('http://crunchify.com/bg.png');
}

.demoDiv {
	margin: auto;
	text-align: center;
}

input.MyButton {
	width: 250px;
	padding: 20px;
	cursor: pointer;
	font-weight: bold;
	font-size: 150%;
	background: #3366cc;
	color: #fff;
	border: 1px solid #3366cc;
	border-radius: 10px;
	-moz-box-shadow: : 6px 6px 5px #999;
	-webkit-box-shadow: : 6px 6px 5px #999;
	box-shadow: : 6px 6px 5px #999;
}

input.MyButton:hover {
	color: #ffff00;
	background: #000;
	border: 1px solid #fff;
	-moz-box-shadow: : 5px 5px 4px #adadad;
	-webkit-box-shadow: : 5px 5px 4px #adadad;
	box-shadow: : 5px 5px 4px #adadad;
}
</style>
</head>
<body>${message}

	<br>
	<br>

	<div class="demoDiv">

		<input class="MyButton" type="button" value="Sign in with Google"
			onclick="location.href='https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=https://springmvcp1942162623trial.hanatrial.ondemand.com/SpringMVC/oauth2callback&response_type=code&client_id=167449359114-7aoesi1phtb9it0b66s1e4bm81niqljm.apps.googleusercontent.com&approval_prompt=force'" />
		<br/><br/>
		<input class="MyButton" type="button" value="Sign in with Google Local"
			onclick="location.href='https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:7171/SpringMVC/oauth2callback&response_type=code&client_id=167449359114-nsrvj64h8e27iu0ttk6r9ph2e774g9jr.apps.googleusercontent.com&approval_prompt=force'" />
		<br/><br/>
		<input class="MyButton" type="button" value="Create with Email"
			onclick="" />
	</div>




</body>
</html>