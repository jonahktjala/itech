<%@ page import="org.itech.klinika.Medicine" %>



<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="medicine.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${medicineInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="medicine.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${medicineInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="medicine.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${medicineInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'expiryDate', 'error')} required">
	<label for="expiryDate">
		<g:message code="medicine.expiryDate.label" default="Expiry Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiryDate" precision="day"  value="${medicineInstance?.expiryDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'genericName', 'error')} ">
	<label for="genericName">
		<g:message code="medicine.genericName.label" default="Generic Name" />
		
	</label>
	<g:textField name="genericName" value="${medicineInstance?.genericName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="medicine.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${medicineInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'minStock', 'error')} required">
	<label for="minStock">
		<g:message code="medicine.minStock.label" default="Min Stock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minStock" type="number" value="${medicineInstance.minStock}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'notificationDate', 'error')} required">
	<label for="notificationDate">
		<g:message code="medicine.notificationDate.label" default="Notification Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="notificationDate" precision="day"  value="${medicineInstance?.notificationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: medicineInstance, field: 'retailPrice', 'error')} required">
	<label for="retailPrice">
		<g:message code="medicine.retailPrice.label" default="Retail Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="retailPrice" value="${fieldValue(bean: medicineInstance, field: 'retailPrice')}" required=""/>
</div>

