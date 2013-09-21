
<%@ page import="org.itech.klinika.ReceptionistProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receptionistProfile.label', default: 'ReceptionistProfile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-receptionistProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-receptionistProfile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="birthdate" title="${message(code: 'receptionistProfile.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'receptionistProfile.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'receptionistProfile.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'receptionistProfile.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'receptionistProfile.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'receptionistProfile.mobileNumber.label', default: 'Mobile Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${receptionistProfileInstanceList}" status="i" var="receptionistProfileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${receptionistProfileInstance.id}">${fieldValue(bean: receptionistProfileInstance, field: "birthdate")}</g:link></td>
					
						<td>${fieldValue(bean: receptionistProfileInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: receptionistProfileInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: receptionistProfileInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: receptionistProfileInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: receptionistProfileInstance, field: "mobileNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${receptionistProfileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
