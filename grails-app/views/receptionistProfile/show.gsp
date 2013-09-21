
<%@ page import="org.itech.klinika.ReceptionistProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receptionistProfile.label', default: 'ReceptionistProfile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receptionistProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receptionistProfile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receptionistProfile">
			
				<g:if test="${receptionistProfileInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="receptionistProfile.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${receptionistProfileInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="receptionistProfile.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${receptionistProfileInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="receptionistProfile.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${receptionistProfileInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="receptionistProfile.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${receptionistProfileInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="receptionistProfile.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${receptionistProfileInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="receptionistProfile.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${receptionistProfileInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.normalUser}">
				<li class="fieldcontain">
					<span id="normalUser-label" class="property-label"><g:message code="receptionistProfile.normalUser.label" default="Normal User" /></span>
					
						<span class="property-value" aria-labelledby="normalUser-label"><g:link controller="normalUser" action="show" id="${receptionistProfileInstance?.normalUser?.id}">${receptionistProfileInstance?.normalUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="receptionistProfile.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${receptionistProfileInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistProfileInstance?.telNumber}">
				<li class="fieldcontain">
					<span id="telNumber-label" class="property-label"><g:message code="receptionistProfile.telNumber.label" default="Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="telNumber-label"><g:fieldValue bean="${receptionistProfileInstance}" field="telNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receptionistProfileInstance?.id}" />
					<g:link class="edit" action="edit" id="${receptionistProfileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
