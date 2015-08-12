<%@ page import="greforco.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'formation', 'error')} required">
	<label for="formation">
		<g:message code="teacher.formation.label" default="Formation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formation" required="" value="${teacherInstance?.formation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'university', 'error')} required">
	<label for="university">
		<g:message code="teacher.university.label" default="University" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="university" required="" value="${teacherInstance?.university}"/>

</div>

