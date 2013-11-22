<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<r:require module="app"/>
</head>
<body>
	<form action='${postUrl}' method='POST' autocomplete='off'>
		<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
		<input type='text' name='j_username' id='username' autofocus="true"/>

		<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
		<input type='password' name='j_password' id='password'/>

		<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' class="button"/>
	</form>
</body>
</html>
