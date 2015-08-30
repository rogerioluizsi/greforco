<%@ page import="greforco.Course" %>

<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>

	<head>
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />

		<g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>

		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'teacher', 'error')} ">
	<!-- <label for="teacher">
		<g:message code="course.teacher.label" default="Teacher" />
		
	</label> -->
	<input type="hidden" name="teacher.id" value="${prof?.id}">
	<!-- <g:select id="teacher" name="teacher.id" from="${greforco.Teacher.list()}" optionKey="id" value="${courseInstance?.teacher?.id}" class="many-to-one" noSelection="['null': '']"/> -->

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${courseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="course.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="value" required="" value="${courseInstance?.value}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'matter', 'error')} required">
	<label for="matter">
		<g:message code="course.matter.label" default="Matter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="matter" name="matter.id" from="${greforco.Matter.list()}" optionKey="id"  optionValue="name" class="many-to-one"/>

</div>



