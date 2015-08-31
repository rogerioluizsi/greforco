<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>
<%@ page import="greforco.Course" %>
<%@ page import="greforco.Enrollment" %>
<%@ page import="greforco.Recommendation" %>

<head>
        <g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>
        <g:set var="cursos" value="${Course.findAllByTeacher(prof)}"/>
        <g:set var="contratadas" value="${Enrollment.findAllByCourseInList(cursos)}"/>
        <g:set var="contratei" value="${Enrollment.findAllByStudent(aluno)}"/>
        <g:set var="aulasNaoAvaliadas" value="${Enrollment.findAllByStudentAndEvaluationIsNull(aluno)}"/>
        <g:set var="recomendacoes" value="${Recommendation.findAllByEnrollmentInList(contratei)}"/>
</head>


<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'enrollment', 'error')} required">
	<label for="enrollment">
		<g:message code="recommendation.enrollment.label" default="Enrollment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enrollment" name="enrollment.id" from="${aulasNaoAvaliadas}" optionKey="id" required="" value="${course?.name}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="recommendation.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${recommendationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="recommendation.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rating" required="" value="${recommendationInstance?.rating}"/>

</div>

<!-- <div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'course_date', 'error')} required">
	<label for="course_date">
		<g:message code="recommendation.course_date.label" default="Coursedate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="course_date" precision="day"  value="${recommendationInstance?.course_date}"  />

</div> -->

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'dateCraeted', 'error')} required">
	<label for="dateCraeted">
		<g:message code="recommendation.dateCraeted.label" default="Date Craeted" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCraeted" precision="day"  value="${recommendationInstance?.dateCraeted}"  />

</div>



