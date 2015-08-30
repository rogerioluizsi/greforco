<%@ page import="greforco.Enrollment" %>

<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>

	<head>
		<g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>
	</head>

<!-- <div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'evaluation', 'error')} ">
	<label for="evaluation">
		<g:message code="enrollment.evaluation.label" default="Evaluation" />
		
	</label>
	<g:textField name="evaluation" value="${enrollmentInstance?.evaluation}"/>

</div> -->

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} ">
	<!-- <label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		
	</label> -->
	<input type="hidden" name="student.id" value="${aluno?.id}">
	<!-- <g:select id="student" name="student.id" from="${greforco.Student.list()}" optionKey="id" value="${enrollmentInstance?.student?.id}" class="many-to-one" noSelection="['null': '']"/> -->

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="enrollment.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${greforco.Course.list()}" optionKey="id" optionValue="name" required="" value="${enrollmentInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="enrollment.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<!-- <g:textField name="hours" required="" value="${enrollmentInstance?.hours}"/> -->
	<select id="duracao" name="hours" required="" >
                      <option value="" selected="selected">Selecione uma duração...</option>
                      <option value="1">1 hora</option>
                      <option value="2">2 horas</option>
                      <option value="3">3 horas</option>
                      <option value="4">4 horas</option>
                      <option value="5">5 horas</option>
                      <option value="6">6 horas</option>
                      <option value="7">7 horas</option>
                      <option value="8">8 horas</option>
                      <option value="9">9 horas</option>
                      <option value="10">10 horas</option>
                  </select>

</div>

