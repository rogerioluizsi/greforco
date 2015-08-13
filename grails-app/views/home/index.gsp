
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Sistema de Inscrição - SELECT</title>		
	</head>


%{-- /*info para quem estiver logado */ --}%
<sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_USER">

<g:link controller='teacher' action="index">    
	<input type="button"  class="btn btn-default" value="Torne-se um professor" class="button"/> 
</g:link>
</sec:ifAnyGranted>

</html>

%{-- Infor para professores --}%
<sec:ifAnyGranted roles="ROLE_PROF">

<g:link controller='course' action="create">    
	<input type="button"  class="btn btn-default" value="Professor, cadastre um curso" class="button"/> 
</g:link>
</sec:ifAnyGranted>

	%{-- Infom para quem n~ao estivert logado --}%
<sec:ifNotLoggedIn>
<g:link controller='login' action="index">    
	<input type="button"  class="btn btn-default" value="Professor, cadastre um curso" class="button"/> 
</g:link>
</sec:ifNotLoggedIn>

</html>