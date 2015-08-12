<%@ page import="greforco.Recommendation" %>



<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'course_date', 'error')} required">
	<label for="course_date">
		<g:message code="recommendation.course_date.label" default="Coursedate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="course_date" precision="day"  value="${recommendationInstance?.course_date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'dateCraeted', 'error')} required">
	<label for="dateCraeted">
		<g:message code="recommendation.dateCraeted.label" default="Date Craeted" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCraeted" precision="day"  value="${recommendationInstance?.dateCraeted}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="recommendation.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${recommendationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'enrollment', 'error')} required">
	<label for="enrollment">
		<g:message code="recommendation.enrollment.label" default="Enrollment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="enrollment" name="enrollment.id" from="${greforco.Enrollment.list()}" optionKey="id" required="" value="${recommendationInstance?.enrollment?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recommendationInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="recommendation.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rating" required="" value="${recommendationInstance?.rating}"/>

</div>

