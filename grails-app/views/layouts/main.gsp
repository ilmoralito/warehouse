<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><g:layoutTitle default="warehouse app"/></title>
	<r:layoutResources/>
</head>
<body>
	<br><br>
	<div class="row">
		<div class="medium-2 columns">
			<ul class="side-nav">
				<li><g:link controller="user">Usuarios</g:link></li>
				<li><g:link controller="user" action="profile">Hola <sec:loggedInUserInfo field="fullName"/>!</g:link></li>
				<li><g:link controller="logout">Salir</g:link></li>
			</ul>
		</div>
		<div class="medium-10 columns">
			<g:layoutBody/>
			<g:if test="${flash.message}">${flash.message}</g:if>
		</div>
	</div>
	<r:layoutResources/>
</body>
</html>
