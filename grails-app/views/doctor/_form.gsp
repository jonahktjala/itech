<%@ page import="org.itech.klinika.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="doctor.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${doctorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'profile', 'error')} required">
	<label for="profile">
		<g:message code="doctor.profile.label" default="Profile" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profile" name="profile.id" from="${org.itech.klinika.Profile.list()}" optionKey="id" required="" value="${doctorInstance?.profile?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'receptionists', 'error')} ">
	<label for="receptionists">
		<g:message code="doctor.receptionists.label" default="Receptionists" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'securityA', 'error')} ">
	<label for="securityA">
		<g:message code="doctor.securityA.label" default="Security A" />
		
	</label>
	<g:textField name="securityA" value="${doctorInstance?.securityA}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'securityQ', 'error')} ">
	<label for="securityQ">
		<g:message code="doctor.securityQ.label" default="Security Q" />
		
	</label>
	<g:textField name="securityQ" value="${doctorInstance?.securityQ}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="doctor.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${doctorInstance?.username}"/>
</div>

