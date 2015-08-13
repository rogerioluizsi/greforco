
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Sistema de Inscrição - SELECT</title>		
	</head>

<sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_USER">

<g:link controller='teacher' action="index">    
	<input type="button"  class="btn btn-default" value="Torne-se um professor" class="button"/> 
</g:link>
</sec:ifAnyGranted>

</html>