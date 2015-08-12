
<%@ page import="greforco.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-enrollment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="enrollment.course.label" default="Course" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'enrollment.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="evaluation" title="${message(code: 'enrollment.evaluation.label', default: 'Evaluation')}" />
					
						<g:sortableColumn property="hours" title="${message(code: 'enrollment.hours.label', default: 'Hours')}" />
					
						<th><g:message code="enrollment.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${enrollmentInstanceList}" status="i" var="enrollmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${enrollmentInstance.id}">${fieldValue(bean: enrollmentInstance, field: "course")}</g:link></td>
					
						<td><g:formatDate date="${enrollmentInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "evaluation")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "hours")}</td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enrollmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
