
<%@ page import="greforco.Areaofknowledge" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'areaofknowledge.label', default: 'Areaofknowledge')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-areaofknowledge" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-areaofknowledge" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'areaofknowledge.name.label', default: 'Name')}" />

						<g:sortableColumn property="dateCreated" title="${message(code: 'areaofknowledge.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${areaofknowledgeInstanceList}" status="i" var="areaofknowledgeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${areaofknowledgeInstance.id}">${fieldValue(bean: areaofknowledgeInstance, field: "name")}</g:link></td>

						<td><g:link action="show" id="${areaofknowledgeInstance.id}">${fieldValue(bean: areaofknowledgeInstance, field: "dateCreated")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${areaofknowledgeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
