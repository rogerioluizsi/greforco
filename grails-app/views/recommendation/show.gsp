
<%@ page import="greforco.Recommendation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recommendation.label', default: 'Recommendation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recommendation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recommendation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recommendation">
			
				<g:if test="${recommendationInstance?.course_date}">
				<li class="fieldcontain">
					<span id="course_date-label" class="property-label"><g:message code="recommendation.course_date.label" default="Coursedate" /></span>
					
						<span class="property-value" aria-labelledby="course_date-label"><g:formatDate date="${recommendationInstance?.course_date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recommendationInstance?.dateCraeted}">
				<li class="fieldcontain">
					<span id="dateCraeted-label" class="property-label"><g:message code="recommendation.dateCraeted.label" default="Date Craeted" /></span>
					
						<span class="property-value" aria-labelledby="dateCraeted-label"><g:formatDate date="${recommendationInstance?.dateCraeted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recommendationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="recommendation.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${recommendationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recommendationInstance?.enrollment}">
				<li class="fieldcontain">
					<span id="enrollment-label" class="property-label"><g:message code="recommendation.enrollment.label" default="Enrollment" /></span>
					
						<span class="property-value" aria-labelledby="enrollment-label"><g:link controller="enrollment" action="show" id="${recommendationInstance?.enrollment?.id}">${recommendationInstance?.enrollment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${recommendationInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="recommendation.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${recommendationInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recommendationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recommendationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
