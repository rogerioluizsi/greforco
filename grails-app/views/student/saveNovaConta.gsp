<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Conta Criada Com Sucesso</title>
	</head>
	<body>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="panel panel-success">
				<div class="panel-body">
       				Sua conta foi criada com sucesso. Use seu Email para fazer login.
      			</div>		 		
			</div>		
			<a href="${createLink(uri: '/login/auth')}" class="btn btn-info" role="button">Login</a>
		</div>
		<div class="col-md-3"></div>
	</div>
	</body>
</html>
