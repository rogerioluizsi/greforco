
<%@ page import="greforco.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="addrress" title="${message(code: 'student.addrress.label', default: 'Addrress')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'student.city.label', default: 'City')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'student.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'student.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="fone" title="${message(code: 'student.fone.label', default: 'Fone')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'student.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "addrress")}</g:link></td>
					
						<td>${fieldValue(bean: studentInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "cpf")}</td>
					
						<td><g:formatDate date="${studentInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: studentInstance, field: "fone")}</td>
					
						<td>${fieldValue(bean: studentInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
