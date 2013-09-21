
<%@ page import="org.itech.klinika.DoctorProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctorProfile.label', default: 'DoctorProfile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-doctorProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-doctorProfile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="birthdate" title="${message(code: 'doctorProfile.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'doctorProfile.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'doctorProfile.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'doctorProfile.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'doctorProfile.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'doctorProfile.mobileNumber.label', default: 'Mobile Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${doctorProfileInstanceList}" status="i" var="doctorProfileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${doctorProfileInstance.id}">${fieldValue(bean: doctorProfileInstance, field: "birthdate")}</g:link></td>
					
						<td>${fieldValue(bean: doctorProfileInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: doctorProfileInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: doctorProfileInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: doctorProfileInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: doctorProfileInstance, field: "mobileNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${doctorProfileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
