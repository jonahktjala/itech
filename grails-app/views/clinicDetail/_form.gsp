<%@ page import="org.itech.klinika.ClinicDetail" %>



<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="clinicDetail.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${clinicDetailInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'clinicHours', 'error')} ">
	<label for="clinicHours">
		<g:message code="clinicDetail.clinicHours.label" default="Clinic Hours" />
		
	</label>
	<g:textField name="clinicHours" value="${clinicDetailInstance?.clinicHours}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'clinicName', 'error')} ">
	<label for="clinicName">
		<g:message code="clinicDetail.clinicName.label" default="Clinic Name" />
		
	</label>
	<g:textField name="clinicName" value="${clinicDetailInstance?.clinicName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="clinicDetail.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${clinicDetailInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'facebookUrl', 'error')} ">
	<label for="facebookUrl">
		<g:message code="clinicDetail.facebookUrl.label" default="Facebook Url" />
		
	</label>
	<g:textField name="facebookUrl" value="${clinicDetailInstance?.facebookUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="clinicDetail.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${clinicDetailInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'mission', 'error')} ">
	<label for="mission">
		<g:message code="clinicDetail.mission.label" default="Mission" />
		
	</label>
	<g:textField name="mission" value="${clinicDetailInstance?.mission}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'mobileNum', 'error')} ">
	<label for="mobileNum">
		<g:message code="clinicDetail.mobileNum.label" default="Mobile Num" />
		
	</label>
	<g:textField name="mobileNum" value="${clinicDetailInstance?.mobileNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'telNum', 'error')} ">
	<label for="telNum">
		<g:message code="clinicDetail.telNum.label" default="Tel Num" />
		
	</label>
	<g:textField name="telNum" value="${clinicDetailInstance?.telNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'twitterUrl', 'error')} ">
	<label for="twitterUrl">
		<g:message code="clinicDetail.twitterUrl.label" default="Twitter Url" />
		
	</label>
	<g:textField name="twitterUrl" value="${clinicDetailInstance?.twitterUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clinicDetailInstance, field: 'vision', 'error')} ">
	<label for="vision">
		<g:message code="clinicDetail.vision.label" default="Vision" />
		
	</label>
	<g:textField name="vision" value="${clinicDetailInstance?.vision}"/>
</div>

