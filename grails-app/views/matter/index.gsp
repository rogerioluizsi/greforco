
<%@ page import="greforco.Matter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matter.label', default: 'Matter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-matter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-matter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'matter.name.label', default: 'Name')}" />

						<th><g:message code="matter.areaofknowledge.label" default="Areaofknowledge" /></th>

						<g:sortableColumn property="description" title="${message(code: 'matter.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'matter.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matterInstanceList}" status="i" var="matterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${matterInstance.id}">${fieldValue(bean: matterInstance, field: "name")}</g:link></td>
					
						<td><g:link controller="areaofknowledge" action="show" id="${fieldValue(bean: matterInstance, field: 'areaofknowledge.id')}">${fieldValue(bean: matterInstance, field: "areaofknowledge.name")}</g:link></td>

						<td>${fieldValue(bean: matterInstance, field: "description")}</td>
					
						<td><g:formatDate date="${matterInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
