<%@ page import="greforco.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${courseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'evaluation', 'error')} required">
	<label for="evaluation">
		<g:message code="course.evaluation.label" default="Evaluation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="evaluation" required="" value="${courseInstance?.evaluation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'matter', 'error')} required">
	<label for="matter">
		<g:message code="course.matter.label" default="Matter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="matter" name="matter.id" from="${greforco.Matter.list()}" optionKey="id" required="" value="${courseInstance?.matter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

%{-- <div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="course.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${greforco.Teacher.list()}" optionKey="id" required="" value="${courseInstance?.teacher?.id}" class="many-to-one"/>

</div> --}%

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="course.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="value" required="" value="${courseInstance?.value}"/>

</div>

