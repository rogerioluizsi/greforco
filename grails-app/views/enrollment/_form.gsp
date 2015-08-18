<%@ page import="greforco.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'evaluation', 'error')} ">
	<label for="evaluation">
		<g:message code="enrollment.evaluation.label" default="Evaluation" />
		
	</label>
	<g:textField name="evaluation" value="${enrollmentInstance?.evaluation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} ">
	<label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		
	</label>
	<g:select id="student" name="student.id" from="${greforco.Student.list()}" optionKey="id" value="${enrollmentInstance?.student?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="enrollment.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${greforco.Course.list()}" optionKey="id" required="" value="${enrollmentInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="enrollment.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hours" required="" value="${enrollmentInstance?.hours}"/>

</div>

