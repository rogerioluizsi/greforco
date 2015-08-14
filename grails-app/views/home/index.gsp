

<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Reforco</title>		
	</head>

${sec.username()}, seja bem vindo! <br><br><br>
%{-- <sec:ifAnyGranted roles= "ROLE_PROF">

<g:link controller='course' action="create", id="${teacherInstance.id}">    
	<input type="button"  class="btn btn-default" value="Professor, cadastre um curso" class="button"/> 
</g:link>
</sec:ifAnyGranted> --}%
Aqui deverao vir as informaçoes e dados que nao dependem da sessao do usuario(proessores, cursos disponiveis) e apenas links para os perfis. Pois todos poderao acessar essa pagina. Toda via, pode haver conteudo dinamico, para os logados e n~ao logados - apenas n pode utilizar dados da sessao. <br><br>

Quem ainda nao e professor, aparecera um botao pra ele se tornar

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

<g:link controller='home' action="perfil">    
	<input type="button"  class="btn btn-default" value="Acesse seu perfil" class="button"/> 
</g:link>


</sec:ifLoggedIn>

<g:link controller='teacher' action="index">    
	<input type="button"  class="btn btn-default" value="Veja todos os nossos professores" class="button"/> 
</g:link>

<g:link controller='course' action="index">    
	<input type="button"  class="btn btn-default" value="Veja todos os nossos cursos" class="button"/> 
</g:link>

</html>

