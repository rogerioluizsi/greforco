
<%@ page import="greforco.Course" %>
<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />

		<g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>

		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<g:if test="${(prof)}">
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</g:if>
			</ul>
		</div>
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'course.name.label', default: 'Name')}" />

						<th><g:message code="course.teacher.label" default="Teacher" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'course.description.label', default: 'Description')}" />
					
						<th><g:message code="course.matter.label" default="Matter" /></th>

						<g:sortableColumn property="dateCreated" title="${message(code: 'course.dateCreated.label', default: 'Date Created')}" />

						<th><g:message code="course.teacher.actions" default="Actions" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "name")}</g:link></td>

						<td><g:link controller="teacher" action="show" id="${courseInstance.teacher.id}">${Student.findByUser(courseInstance.teacher.user).name}</g:link></td>
					
						<td>${fieldValue(bean: courseInstance, field: "description")}</td>
					
						<td><g:link controller="matter" action="show" id="${courseInstance.matter.id}">${fieldValue(bean: courseInstance, field: "matter.name")}</g:link></td>

						<td><g:formatDate date="${courseInstance.dateCreated}" /></td>

						<td><g:link class="btn btn-success" style="padding: 2px 6px;" controller="enrollment" action="create">Contratar</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
