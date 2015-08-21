<%@ page import="greforco.Teacher" %>
<%@ page import="greforco.Student" %>

<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Reforco</title>		
	</head>

	<br><br><br>
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

	<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
	<div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <blockquote>
                <p>
	                <g:link controller="teacher" action="show" id="${teacherInstance?.id}">
	                	${Student.findByUser(teacherInstance.user).name}
	                </g:link>
                </p>
                <footer>
                	<span class="property-value" aria-labelledby="formation-label">
                		${fieldValue(bean: teacherInstance, field: "formation")}
                	</span> <br> 
                	<cite title="Source Title">Grande experiência como professor.</cite>
                </footer>
            </blockquote>
        </div>
            
    </div>
</g:each>




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

