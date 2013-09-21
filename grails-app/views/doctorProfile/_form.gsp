<%@ page import="org.itech.klinika.DoctorProfile" %>



<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="doctorProfile.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${doctorProfileInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="doctorProfile.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${doctorProfileInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="doctorProfile.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${doctorProfileInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="doctorProfile.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${doctorProfileInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="doctorProfile.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${doctorProfileInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="doctorProfile.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${doctorProfileInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'normalUser', 'error')} required">
	<label for="normalUser">
		<g:message code="doctorProfile.normalUser.label" default="Normal User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="normalUser" name="normalUser.id" from="${org.itech.klinika.NormalUser.list()}" optionKey="id" required="" value="${doctorProfileInstance?.normalUser?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="doctorProfile.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${doctorProfileInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: doctorProfileInstance, field: 'telNumber', 'error')} ">
	<label for="telNumber">
		<g:message code="doctorProfile.telNumber.label" default="Tel Number" />
		
	</label>
	<g:textField name="telNumber" value="${doctorProfileInstance?.telNumber}"/>
</div>

