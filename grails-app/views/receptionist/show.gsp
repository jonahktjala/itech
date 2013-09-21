
<%@ page import="org.itech.klinika.Receptionist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receptionist.label', default: 'Receptionist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receptionist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receptionist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receptionist">
			
				<g:if test="${receptionistInstance?.doctors}">
				<li class="fieldcontain">
					<span id="doctors-label" class="property-label"><g:message code="receptionist.doctors.label" default="Doctors" /></span>
					
						<g:each in="${receptionistInstance.doctors}" var="d">
						<span class="property-value" aria-labelledby="doctors-label"><g:link controller="doctor" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="receptionist.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${receptionistInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.profile}">
				<li class="fieldcontain">
					<span id="profile-label" class="property-label"><g:message code="receptionist.profile.label" default="Profile" /></span>
					
						<span class="property-value" aria-labelledby="profile-label"><g:link controller="profile" action="show" id="${receptionistInstance?.profile?.id}">${receptionistInstance?.profile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.securityA}">
				<li class="fieldcontain">
					<span id="securityA-label" class="property-label"><g:message code="receptionist.securityA.label" default="Security A" /></span>
					
						<span class="property-value" aria-labelledby="securityA-label"><g:fieldValue bean="${receptionistInstance}" field="securityA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.securityQ}">
				<li class="fieldcontain">
					<span id="securityQ-label" class="property-label"><g:message code="receptionist.securityQ.label" default="Security Q" /></span>
					
						<span class="property-value" aria-labelledby="securityQ-label"><g:fieldValue bean="${receptionistInstance}" field="securityQ"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receptionistInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="receptionist.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${receptionistInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receptionistInstance?.id}" />
					<g:link class="edit" action="edit" id="${receptionistInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
