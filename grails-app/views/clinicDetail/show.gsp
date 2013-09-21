
<%@ page import="org.itech.klinika.ClinicDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clinicDetail.label', default: 'ClinicDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-clinicDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-clinicDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list clinicDetail">
			
				<g:if test="${clinicDetailInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="clinicDetail.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${clinicDetailInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.clinicHours}">
				<li class="fieldcontain">
					<span id="clinicHours-label" class="property-label"><g:message code="clinicDetail.clinicHours.label" default="Clinic Hours" /></span>
					
						<span class="property-value" aria-labelledby="clinicHours-label"><g:fieldValue bean="${clinicDetailInstance}" field="clinicHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.clinicName}">
				<li class="fieldcontain">
					<span id="clinicName-label" class="property-label"><g:message code="clinicDetail.clinicName.label" default="Clinic Name" /></span>
					
						<span class="property-value" aria-labelledby="clinicName-label"><g:fieldValue bean="${clinicDetailInstance}" field="clinicName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="clinicDetail.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clinicDetailInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.facebookUrl}">
				<li class="fieldcontain">
					<span id="facebookUrl-label" class="property-label"><g:message code="clinicDetail.facebookUrl.label" default="Facebook Url" /></span>
					
						<span class="property-value" aria-labelledby="facebookUrl-label"><g:fieldValue bean="${clinicDetailInstance}" field="facebookUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="clinicDetail.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${clinicDetailInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.mission}">
				<li class="fieldcontain">
					<span id="mission-label" class="property-label"><g:message code="clinicDetail.mission.label" default="Mission" /></span>
					
						<span class="property-value" aria-labelledby="mission-label"><g:fieldValue bean="${clinicDetailInstance}" field="mission"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.mobileNum}">
				<li class="fieldcontain">
					<span id="mobileNum-label" class="property-label"><g:message code="clinicDetail.mobileNum.label" default="Mobile Num" /></span>
					
						<span class="property-value" aria-labelledby="mobileNum-label"><g:fieldValue bean="${clinicDetailInstance}" field="mobileNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.telNum}">
				<li class="fieldcontain">
					<span id="telNum-label" class="property-label"><g:message code="clinicDetail.telNum.label" default="Tel Num" /></span>
					
						<span class="property-value" aria-labelledby="telNum-label"><g:fieldValue bean="${clinicDetailInstance}" field="telNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.twitterUrl}">
				<li class="fieldcontain">
					<span id="twitterUrl-label" class="property-label"><g:message code="clinicDetail.twitterUrl.label" default="Twitter Url" /></span>
					
						<span class="property-value" aria-labelledby="twitterUrl-label"><g:fieldValue bean="${clinicDetailInstance}" field="twitterUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clinicDetailInstance?.vision}">
				<li class="fieldcontain">
					<span id="vision-label" class="property-label"><g:message code="clinicDetail.vision.label" default="Vision" /></span>
					
						<span class="property-value" aria-labelledby="vision-label"><g:fieldValue bean="${clinicDetailInstance}" field="vision"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${clinicDetailInstance?.id}" />
					<g:link class="edit" action="edit" id="${clinicDetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
