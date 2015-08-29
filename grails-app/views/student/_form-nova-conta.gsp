<%@ page import="greforco.Student" %>

<div class="row">

	<div class="col-md-3">
	</div>

	<div class="col-md-5">

		<fieldset>
			<legend> Cadastro </legend>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label">
					<g:message code="student.name.label" default="Name" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control" name="name" required="" value="${studentInstance?.name}"/>

			</div>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label">
					<g:message code="student.email.label" default="Email" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control" name="email" required="" value="${studentInstance?.email}"/>

			</div>
		<!-- </fieldset>
	</div> -->

			<!-- <div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label">
					<g:message code="student.cpf.label" default="Cpf" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control" name="cpf" required="" value="${studentInstance?.cpf}"/>

			</div>
			</fieldset>
			<fieldset>
				<legend> Contato </legend>
			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label">
					<g:message code="student.city.label" default="City" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="city"  value="${studentInstance?.city}"/>

			</div>


			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addrress', 'error')} ">
				<label for="addrress" class="control-label">
					<g:message code="student.addrress.label" default="Addrress" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="addrress"  value="${studentInstance?.addrress}"/>

			</div>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'state', 'error')} ">
				<label for="state" class="control-label">
					<g:message code="student.state.label" default="State" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="state" value="${studentInstance?.state}"/>

			</div>


			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fone', 'error')} ">
				<label for="fone" class="control-label">
					<g:message code="student.fone.label" default="Fone" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="fone" value="${studentInstance?.fone}"/>

			</div>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'gender', 'error')} ">
				<label for="gender" class="control-label">
					<g:message code="student.gender.label" default="Gender" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="gender" value="${studentInstance?.gender}"/>

			</div>



			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'scholarity', 'error')} ">
				<label for="scholarity" class="control-label">
					<g:message code="student.scholarity.label" default="Scholarity" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="scholarity" value="${studentInstance?.scholarity}"/>

			</div>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'skype', 'error')} ">
				<label for="skype" class="control-label"> 
					<g:message code="student.skype.label" default="Skype" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="skype" value="${studentInstance?.skype}"/>

			</div>

			<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'whatsapp', 'error')} ">
				<label for="whatsapp" class="control-label">
					<g:message code="student.whatsapp.label" default="Whatsapp" />
					%{-- <span class="required-indicator">*</span> --}%
				</label>
				<g:textField class="form-control" name="whatsapp" value="${studentInstance?.whatsapp}"/>

			</div> -->
		<div class="row">
			<div class="col-md-6">
				<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'password', 'error')} required">
						<label for="password" class="control-label">
							<g:message code="student.password.label" default="Senha" />
							<span class="required-indicator">*</span>
						</label>
						<g:passwordField class="form-control" type = 'senha'  name="password" required="" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'confirmPassword', 'error')} required">
						<label for="confirmPassword" class="control-label">
							<g:message code="student.confirmPassword.label" default="Confirma Senha" />
							<span class="required-indicator">*</span>
						</label>
						<g:passwordField class="form-control"  type= "confirmPassword" name="confirmPassword" required="" />
				</div>
			</div>
			<div class="col-md-12">
				<p>Ao se cadastrar você concorda com os <g:link controller="home" action="termos">Termos de uso</g:link> do site reforco.com.</p>
			</div>
		</div>

			%{-- <div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'user', 'error')} required">
				<label for="user">
					<g:message code="student.user.label" default="User" />
					<span class="required-indicator">*</span>
				</label>
				<g:select id="user" name="user.id" from="${greforco.User.list()}" optionKey="id" required="" value="${studentInstance?.user?.id}" class="many-to-one"/>

			</div> --}%



		</fieldset>

	</div>

</div>