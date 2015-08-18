
<%@ page import="greforco.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.whatsapp}">
				<li class="fieldcontain">
					<span id="whatsapp-label" class="property-label"><g:message code="student.whatsapp.label" default="Whatsapp" /></span>
					
						<span class="property-value" aria-labelledby="whatsapp-label"><g:fieldValue bean="${studentInstance}" field="whatsapp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="student.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${studentInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.scholarity}">
				<li class="fieldcontain">
					<span id="scholarity-label" class="property-label"><g:message code="student.scholarity.label" default="Scholarity" /></span>
					
						<span class="property-value" aria-labelledby="scholarity-label"><g:fieldValue bean="${studentInstance}" field="scholarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="student.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${studentInstance?.user?.id}">${studentInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.fone}">
				<li class="fieldcontain">
					<span id="fone-label" class="property-label"><g:message code="student.fone.label" default="Fone" /></span>
					
						<span class="property-value" aria-labelledby="fone-label"><g:fieldValue bean="${studentInstance}" field="fone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.skype}">
				<li class="fieldcontain">
					<span id="skype-label" class="property-label"><g:message code="student.skype.label" default="Skype" /></span>
					
						<span class="property-value" aria-labelledby="skype-label"><g:fieldValue bean="${studentInstance}" field="skype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.addrress}">
				<li class="fieldcontain">
					<span id="addrress-label" class="property-label"><g:message code="student.addrress.label" default="Addrress" /></span>
					
						<span class="property-value" aria-labelledby="addrress-label"><g:fieldValue bean="${studentInstance}" field="addrress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="student.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${studentInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="student.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${studentInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="student.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${studentInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="student.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${studentInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="student.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${studentInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="student.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
