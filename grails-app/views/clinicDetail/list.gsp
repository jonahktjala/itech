
<%@ page import="org.itech.klinika.ClinicDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clinicDetail.label', default: 'ClinicDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-clinicDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-clinicDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'clinicDetail.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="clinicHours" title="${message(code: 'clinicDetail.clinicHours.label', default: 'Clinic Hours')}" />
					
						<g:sortableColumn property="clinicName" title="${message(code: 'clinicDetail.clinicName.label', default: 'Clinic Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'clinicDetail.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="facebookUrl" title="${message(code: 'clinicDetail.facebookUrl.label', default: 'Facebook Url')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'clinicDetail.location.label', default: 'Location')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clinicDetailInstanceList}" status="i" var="clinicDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clinicDetailInstance.id}">${fieldValue(bean: clinicDetailInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: clinicDetailInstance, field: "clinicHours")}</td>
					
						<td>${fieldValue(bean: clinicDetailInstance, field: "clinicName")}</td>
					
						<td>${fieldValue(bean: clinicDetailInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: clinicDetailInstance, field: "facebookUrl")}</td>
					
						<td>${fieldValue(bean: clinicDetailInstance, field: "location")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clinicDetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
