
<%@ page import="org.itech.klinika.DoctorProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctorProfile.label', default: 'DoctorProfile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctorProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctorProfile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctorProfile">
			
				<g:if test="${doctorProfileInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="doctorProfile.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${doctorProfileInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="doctorProfile.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${doctorProfileInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="doctorProfile.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${doctorProfileInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="doctorProfile.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${doctorProfileInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="doctorProfile.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${doctorProfileInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="doctorProfile.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${doctorProfileInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.normalUser}">
				<li class="fieldcontain">
					<span id="normalUser-label" class="property-label"><g:message code="doctorProfile.normalUser.label" default="Normal User" /></span>
					
						<span class="property-value" aria-labelledby="normalUser-label"><g:link controller="normalUser" action="show" id="${doctorProfileInstance?.normalUser?.id}">${doctorProfileInstance?.normalUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="doctorProfile.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${doctorProfileInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorProfileInstance?.telNumber}">
				<li class="fieldcontain">
					<span id="telNumber-label" class="property-label"><g:message code="doctorProfile.telNumber.label" default="Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="telNumber-label"><g:fieldValue bean="${doctorProfileInstance}" field="telNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${doctorProfileInstance?.id}" />
					<g:link class="edit" action="edit" id="${doctorProfileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
