<%@ page import="greforco.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="enrollment.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${greforco.Course.list()}" optionKey="id" required="" value="${enrollmentInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'evaluation', 'error')} required">
	<label for="evaluation">
		<g:message code="enrollment.evaluation.label" default="Evaluation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="evaluation" required="" value="${enrollmentInstance?.evaluation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="enrollment.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hours" required="" value="${enrollmentInstance?.hours}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${greforco.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.student?.id}" class="many-to-one"/>

</div>

