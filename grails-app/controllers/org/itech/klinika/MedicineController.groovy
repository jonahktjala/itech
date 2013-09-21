package org.itech.klinika

import org.springframework.dao.DataIntegrityViolationException

class MedicineController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [medicineInstanceList: Medicine.list(params), medicineInstanceTotal: Medicine.count()]
    }

    def create() {
        [medicineInstance: new Medicine(params)]
    }

    def save() {
        def medicineInstance = new Medicine(params)
        if (!medicineInstance.save(flush: true)) {
            render(view: "create", model: [medicineInstance: medicineInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'medicine.label', default: 'Medicine'), medicineInstance.id])
        redirect(action: "show", id: medicineInstance.id)
    }

    def show(Long id) {
        def medicineInstance = Medicine.get(id)
        if (!medicineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "list")
            return
        }

        [medicineInstance: medicineInstance]
    }

    def edit(Long id) {
        def medicineInstance = Medicine.get(id)
        if (!medicineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "list")
            return
        }

        [medicineInstance: medicineInstance]
    }

    def update(Long id, Long version) {
        def medicineInstance = Medicine.get(id)
        if (!medicineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (medicineInstance.version > version) {
                medicineInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'medicine.label', default: 'Medicine')] as Object[],
                          "Another user has updated this Medicine while you were editing")
                render(view: "edit", model: [medicineInstance: medicineInstance])
                return
            }
        }

        medicineInstance.properties = params

        if (!medicineInstance.save(flush: true)) {
            render(view: "edit", model: [medicineInstance: medicineInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'medicine.label', default: 'Medicine'), medicineInstance.id])
        redirect(action: "show", id: medicineInstance.id)
    }

    def delete(Long id) {
        def medicineInstance = Medicine.get(id)
        if (!medicineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "list")
            return
        }

        try {
            medicineInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'medicine.label', default: 'Medicine'), id])
            redirect(action: "show", id: id)
        }
    }
}
