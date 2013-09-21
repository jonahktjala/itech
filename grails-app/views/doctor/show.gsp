
<%@ page import="org.itech.klinika.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-doctor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list doctor">
			
				<g:if test="${doctorInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="doctor.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${doctorInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.profile}">
				<li class="fieldcontain">
					<span id="profile-label" class="property-label"><g:message code="doctor.profile.label" default="Profile" /></span>
					
						<span class="property-value" aria-labelledby="profile-label"><g:link controller="profile" action="show" id="${doctorInstance?.profile?.id}">${doctorInstance?.profile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.receptionists}">
				<li class="fieldcontain">
					<span id="receptionists-label" class="property-label"><g:message code="doctor.receptionists.label" default="Receptionists" /></span>
					
						<g:each in="${doctorInstance.receptionists}" var="r">
						<span class="property-value" aria-labelledby="receptionists-label"><g:link controller="receptionist" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.securityA}">
				<li class="fieldcontain">
					<span id="securityA-label" class="property-label"><g:message code="doctor.securityA.label" default="Security A" /></span>
					
						<span class="property-value" aria-labelledby="securityA-label"><g:fieldValue bean="${doctorInstance}" field="securityA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.securityQ}">
				<li class="fieldcontain">
					<span id="securityQ-label" class="property-label"><g:message code="doctor.securityQ.label" default="Security Q" /></span>
					
						<span class="property-value" aria-labelledby="securityQ-label"><g:fieldValue bean="${doctorInstance}" field="securityQ"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${doctorInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="doctor.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${doctorInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${doctorInstance?.id}" />
					<g:link class="edit" action="edit" id="${doctorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
