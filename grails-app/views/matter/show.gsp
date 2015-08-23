
<%@ page import="greforco.Matter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matter.label', default: 'Matter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-matter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<sec:ifAnyGranted roles= "ROLE_ADMIN">
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
		</sec:ifAnyGranted>

		<div id="show-matter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list matter">

				<g:if test="${matterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="matter.name.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${matterInstance}" field="name"/></span>
					
				</li>
				</g:if>

				<g:if test="${matterInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="matter.description.label" default="Descrição" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${matterInstance}" field="description"/></span>
					
				</li>
				</g:if>			
			
				<g:if test="${matterInstance?.areaofknowledge}">
				<li class="fieldcontain">
					<span id="areaofknowledge-label" class="property-label"><g:message code="matter.areaofknowledge.label" default="Área de Conhecimento" /></span>
					
						<span class="property-value" aria-labelledby="areaofknowledge-label"><g:link controller="areaofknowledge" action="show" id="${matterInstance?.areaofknowledge?.id}">${matterInstance?.areaofknowledge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matterInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="matter.dateCreated.label" default="Data de Cadastro" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${matterInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>				
			
			</ol>

			<sec:ifAnyGranted roles= "ROLE_ADMIN">
				<g:form url="[resource:matterInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${matterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</sec:ifAnyGranted>

		</div>
	</body>
</html>
