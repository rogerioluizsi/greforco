<%@ page import="greforco.Matter" %>



<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'areaofknowledge', 'error')} required">
	<label for="areaofknowledge">
		<g:message code="matter.areaofknowledge.label" default="Areaofknowledge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="areaofknowledge" name="areaofknowledge.id" from="${greforco.Areaofknowledge.list()}" optionKey="id" optionValue="name" required="" value="${matterInstance?.areaofknowledge?.name}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="matter.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${matterInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="matter.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${matterInstance?.name}"/>

</div>

