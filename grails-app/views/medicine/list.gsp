
<%@ page import="org.itech.klinika.Medicine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicine.label', default: 'Medicine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-medicine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-medicine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'medicine.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'medicine.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'medicine.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="expiryDate" title="${message(code: 'medicine.expiryDate.label', default: 'Expiry Date')}" />
					
						<g:sortableColumn property="genericName" title="${message(code: 'medicine.genericName.label', default: 'Generic Name')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'medicine.isActive.label', default: 'Is Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${medicineInstanceList}" status="i" var="medicineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${medicineInstance.id}">${fieldValue(bean: medicineInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: medicineInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: medicineInstance, field: "quantity")}</td>
					
						<td><g:formatDate date="${medicineInstance.expiryDate}" /></td>
					
						<td>${fieldValue(bean: medicineInstance, field: "genericName")}</td>
					
						<td><g:formatBoolean boolean="${medicineInstance.isActive}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${medicineInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
