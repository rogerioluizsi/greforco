<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teacher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="teacher.user.label" default="User" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'teacher.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="formation" title="${message(code: 'teacher.formation.label', default: 'Formation')}" />
					
						<g:sortableColumn property="university" title="${message(code: 'teacher.university.label', default: 'University')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<!-- <td><g:link action="show" id="${teacherInstance.id}">${fieldValue(bean: teacherInstance, field: "user")}</g:link></td> -->

						<td><g:link action="show" id="${teacherInstance.id}">${Student.findByUser(teacherInstance.user).name}</g:link></td>
					
						<td><g:formatDate date="${teacherInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: teacherInstance, field: "formation")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "university")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teacherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
