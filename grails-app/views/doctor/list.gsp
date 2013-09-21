
<%@ page import="org.itech.klinika.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-doctor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-doctor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="password" title="${message(code: 'doctor.password.label', default: 'Password')}" />
					
						<th><g:message code="doctor.profile.label" default="Profile" /></th>
					
						<g:sortableColumn property="securityA" title="${message(code: 'doctor.securityA.label', default: 'Security A')}" />
					
						<g:sortableColumn property="securityQ" title="${message(code: 'doctor.securityQ.label', default: 'Security Q')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'doctor.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${doctorInstance.id}">${fieldValue(bean: doctorInstance, field: "password")}</g:link></td>
					
						<td>${fieldValue(bean: doctorInstance, field: "profile")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "securityA")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "securityQ")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${doctorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
