<html>
<head>
	<title><g:message code="springSecurity.login.title"/></title>
	<meta name="layout" content="main" />
	<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
</head>

<body>
	 <a href="${createLink(uri: '/j_spring_security_logout')}">´Para confirmar, entre novamente com as suas credenciais</a>
	 <logout logout-success-url="/login.html" />


</body>
</html>
