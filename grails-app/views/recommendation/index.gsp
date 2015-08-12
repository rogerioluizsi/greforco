
<%@ page import="greforco.Recommendation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recommendation.label', default: 'Recommendation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recommendation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recommendation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="course_date" title="${message(code: 'recommendation.course_date.label', default: 'Coursedate')}" />
					
						<g:sortableColumn property="dateCraeted" title="${message(code: 'recommendation.dateCraeted.label', default: 'Date Craeted')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'recommendation.description.label', default: 'Description')}" />
					
						<th><g:message code="recommendation.enrollment.label" default="Enrollment" /></th>
					
						<g:sortableColumn property="rating" title="${message(code: 'recommendation.rating.label', default: 'Rating')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recommendationInstanceList}" status="i" var="recommendationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recommendationInstance.id}">${fieldValue(bean: recommendationInstance, field: "course_date")}</g:link></td>
					
						<td><g:formatDate date="${recommendationInstance.dateCraeted}" /></td>
					
						<td>${fieldValue(bean: recommendationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: recommendationInstance, field: "enrollment")}</td>
					
						<td>${fieldValue(bean: recommendationInstance, field: "rating")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recommendationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
