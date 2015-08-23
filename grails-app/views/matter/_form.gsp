<%@ page import="greforco.Matter" %>

<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="matter.name.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${matterInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="matter.description.label" default="Descrição" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${matterInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: matterInstance, field: 'areaofknowledge', 'error')} required">
	<label for="areaofknowledge">
		<g:message code="matter.areaofknowledge.label" default="Área de Conhecimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="areaofknowledge" name="areaofknowledge.id" from="${greforco.Areaofknowledge.list()}" optionKey="id" required="" value="${matterInstance?.areaofknowledge?.id}" class="many-to-one"/>

</div>





