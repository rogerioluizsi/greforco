

<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Reforco</title>		
	</head>

${sec.username()}
%{-- <sec:ifAnyGranted roles= "ROLE_PROF">

<g:link controller='course' action="create", id="${teacherInstance.id}">    
	<input type="button"  class="btn btn-default" value="Professor, cadastre um curso" class="button"/> 
</g:link>
</sec:ifAnyGranted> --}%

<sec:ifAnyGranted roles= "ROLE_USER">


%{-- /*info para quem estiver logado */ --}%
<sec:ifNotGranted  roles="ROLE_PROF">

<g:link controller='teacher' action="create">    
	<input type="button"  class="btn btn-default" value="Torne-se um professor" class="button"/> 
</g:link>
</sec:ifNotGranted >

</sec:ifAnyGranted>



	%{-- Infom para quem n~ao estivert logado --}%
<sec:ifNotLoggedIn>
<g:link controller='login' action="index">    
	<input type="button"  class="btn btn-default" value="vai logar vagabundo" class="button"/> 
</g:link>
</sec:ifNotLoggedIn>

<sec:ifLoggedIn>
<li class="logout"><a href="${createLink(uri: '/j_spring_security_logout')}">
				<i class="glyphicon glyphicon-off"></i>
				Sair
</a></li>
</sec:ifLoggedIn>
</html>

