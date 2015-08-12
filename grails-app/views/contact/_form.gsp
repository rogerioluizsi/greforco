<%@ page import="greforco.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contact.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${contactInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="contact.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${contactInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contactInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="contact.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${contactInstance?.subject}"/>

</div>

