<%@ page import="greforco.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'whatsapp', 'error')} ">
	<label for="whatsapp">
		<g:message code="student.whatsapp.label" default="Whatsapp" />
		
	</label>
	<g:textField name="whatsapp" value="${studentInstance?.whatsapp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="student.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${studentInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'scholarity', 'error')} ">
	<label for="scholarity">
		<g:message code="student.scholarity.label" default="Scholarity" />
		
	</label>
	<g:textField name="scholarity" value="${studentInstance?.scholarity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="student.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${greforco.User.list()}" optionKey="id" value="${studentInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fone', 'error')} ">
	<label for="fone">
		<g:message code="student.fone.label" default="Fone" />
		
	</label>
	<g:textField name="fone" value="${studentInstance?.fone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'skype', 'error')} ">
	<label for="skype">
		<g:message code="student.skype.label" default="Skype" />
		
	</label>
	<g:textField name="skype" value="${studentInstance?.skype}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addrress', 'error')} ">
	<label for="addrress">
		<g:message code="student.addrress.label" default="Addrress" />
		
	</label>
	<g:textField name="addrress" value="${studentInstance?.addrress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="student.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${studentInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="student.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${studentInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="student.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${studentInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="student.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${studentInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>

</div>

