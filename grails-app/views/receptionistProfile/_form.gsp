<%@ page import="org.itech.klinika.ReceptionistProfile" %>



<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="receptionistProfile.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${receptionistProfileInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="receptionistProfile.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${receptionistProfileInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="receptionistProfile.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${receptionistProfileInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="receptionistProfile.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${receptionistProfileInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="receptionistProfile.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${receptionistProfileInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="receptionistProfile.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${receptionistProfileInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'normalUser', 'error')} required">
	<label for="normalUser">
		<g:message code="receptionistProfile.normalUser.label" default="Normal User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="normalUser" name="normalUser.id" from="${org.itech.klinika.NormalUser.list()}" optionKey="id" required="" value="${receptionistProfileInstance?.normalUser?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="receptionistProfile.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${receptionistProfileInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistProfileInstance, field: 'telNumber', 'error')} ">
	<label for="telNumber">
		<g:message code="receptionistProfile.telNumber.label" default="Tel Number" />
		
	</label>
	<g:textField name="telNumber" value="${receptionistProfileInstance?.telNumber}"/>
</div>

