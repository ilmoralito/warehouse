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
		<div class="small-4 small-centered columns">
			<div class="row">
				<div class="small-4 small-centered columns">
					<r:img uri="/images/logo-ucc.gif"/>
				</div>
			</div>
			<g:layoutBody/>
			<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>
		</div>
	</div>
	<r:layoutResources/>
</body>
</html>
