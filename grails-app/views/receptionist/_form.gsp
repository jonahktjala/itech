<%@ page import="org.itech.klinika.Receptionist" %>



<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'doctors', 'error')} ">
	<label for="doctors">
		<g:message code="receptionist.doctors.label" default="Doctors" />
		
	</label>
	<g:select name="doctors" from="${org.itech.klinika.Doctor.list()}" multiple="multiple" optionKey="id" size="5" value="${receptionistInstance?.doctors*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="receptionist.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${receptionistInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'profile', 'error')} required">
	<label for="profile">
		<g:message code="receptionist.profile.label" default="Profile" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profile" name="profile.id" from="${org.itech.klinika.Profile.list()}" optionKey="id" required="" value="${receptionistInstance?.profile?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'securityA', 'error')} ">
	<label for="securityA">
		<g:message code="receptionist.securityA.label" default="Security A" />
		
	</label>
	<g:textField name="securityA" value="${receptionistInstance?.securityA}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'securityQ', 'error')} ">
	<label for="securityQ">
		<g:message code="receptionist.securityQ.label" default="Security Q" />
		
	</label>
	<g:textField name="securityQ" value="${receptionistInstance?.securityQ}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receptionistInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="receptionist.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${receptionistInstance?.username}"/>
</div>

