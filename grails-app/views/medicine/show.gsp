
<%@ page import="org.itech.klinika.Medicine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicine.label', default: 'Medicine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-medicine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-medicine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list medicine">
			
				<g:if test="${medicineInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="medicine.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${medicineInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="medicine.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${medicineInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="medicine.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${medicineInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.expiryDate}">
				<li class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="medicine.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:formatDate date="${medicineInstance?.expiryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.genericName}">
				<li class="fieldcontain">
					<span id="genericName-label" class="property-label"><g:message code="medicine.genericName.label" default="Generic Name" /></span>
					
						<span class="property-value" aria-labelledby="genericName-label"><g:fieldValue bean="${medicineInstance}" field="genericName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="medicine.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${medicineInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.minStock}">
				<li class="fieldcontain">
					<span id="minStock-label" class="property-label"><g:message code="medicine.minStock.label" default="Min Stock" /></span>
					
						<span class="property-value" aria-labelledby="minStock-label"><g:fieldValue bean="${medicineInstance}" field="minStock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.notificationDate}">
				<li class="fieldcontain">
					<span id="notificationDate-label" class="property-label"><g:message code="medicine.notificationDate.label" default="Notification Date" /></span>
					
						<span class="property-value" aria-labelledby="notificationDate-label"><g:formatDate date="${medicineInstance?.notificationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicineInstance?.retailPrice}">
				<li class="fieldcontain">
					<span id="retailPrice-label" class="property-label"><g:message code="medicine.retailPrice.label" default="Retail Price" /></span>
					
						<span class="property-value" aria-labelledby="retailPrice-label"><g:fieldValue bean="${medicineInstance}" field="retailPrice"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${medicineInstance?.id}" />
					<g:link class="edit" action="edit" id="${medicineInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
