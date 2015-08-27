<%@ page import="greforco.Teacher" %>

<sec:ifAnyGranted roles= "ROLE_ADMIN">
	<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'user', 'error')} ">
		<label for="user">
			<g:message code="teacher.user.label" default="User" />
		
		</label>
		<g:select id="user" name="user.id" from="${greforco.User.list()}" optionKey="id" value="${teacherInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>
	</div>
</sec:ifAnyGranted>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'formation', 'error')} required">
	<label for="formation">
		<g:message code="teacher.formation.label" default="Formation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formation" required="" value="${teacherInstance?.formation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'university', 'error')} required">
	<label for="university">
		<g:message code="teacher.university.label" default="Universidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="university" required="" value="${teacherInstance?.university}"/>

</div>

