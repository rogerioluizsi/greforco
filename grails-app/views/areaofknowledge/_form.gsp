<%@ page import="greforco.Areaofknowledge" %>



<div class="fieldcontain ${hasErrors(bean: areaofknowledgeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="areaofknowledge.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${areaofknowledgeInstance?.name}"/>

</div>

