<%@ page import="greforco.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addrress', 'error')} required">
	<label for="addrress">
		<g:message code="student.addrress.label" default="Addrress" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addrress" required="" value="${studentInstance?.addrress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="student.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${studentInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="student.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${studentInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fone', 'error')} required">
	<label for="fone">
		<g:message code="student.fone.label" default="Fone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fone" required="" value="${studentInstance?.fone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="student.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gender" required="" value="${studentInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'scholarity', 'error')} required">
	<label for="scholarity">
		<g:message code="student.scholarity.label" default="Scholarity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="scholarity" required="" value="${studentInstance?.scholarity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'skype', 'error')} required">
	<label for="skype">
		<g:message code="student.skype.label" default="Skype" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="skype" required="" value="${studentInstance?.skype}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="student.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${studentInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="student.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${greforco.User.list()}" optionKey="id" required="" value="${studentInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'whatsapp', 'error')} required">
	<label for="whatsapp">
		<g:message code="student.whatsapp.label" default="Whatsapp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="whatsapp" required="" value="${studentInstance?.whatsapp}"/>

</div>

