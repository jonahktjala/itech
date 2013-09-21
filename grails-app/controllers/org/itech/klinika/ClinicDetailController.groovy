package org.itech.klinika

import org.springframework.dao.DataIntegrityViolationException

class ClinicDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [clinicDetailInstanceList: ClinicDetail.list(params), clinicDetailInstanceTotal: ClinicDetail.count()]
    }

    def create() {
        [clinicDetailInstance: new ClinicDetail(params)]
    }

    def save() {
        def clinicDetailInstance = new ClinicDetail(params)
        if (!clinicDetailInstance.save(flush: true)) {
            render(view: "create", model: [clinicDetailInstance: clinicDetailInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), clinicDetailInstance.id])
        redirect(action: "show", id: clinicDetailInstance.id)
    }

    def show(Long id) {
        def clinicDetailInstance = ClinicDetail.get(id)
        if (!clinicDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "list")
            return
        }

        [clinicDetailInstance: clinicDetailInstance]
    }

    def edit(Long id) {
        def clinicDetailInstance = ClinicDetail.get(id)
        if (!clinicDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "list")
            return
        }

        [clinicDetailInstance: clinicDetailInstance]
    }

    def update(Long id, Long version) {
        def clinicDetailInstance = ClinicDetail.get(id)
        if (!clinicDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (clinicDetailInstance.version > version) {
                clinicDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'clinicDetail.label', default: 'ClinicDetail')] as Object[],
                          "Another user has updated this ClinicDetail while you were editing")
                render(view: "edit", model: [clinicDetailInstance: clinicDetailInstance])
                return
            }
        }

        clinicDetailInstance.properties = params

        if (!clinicDetailInstance.save(flush: true)) {
            render(view: "edit", model: [clinicDetailInstance: clinicDetailInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), clinicDetailInstance.id])
        redirect(action: "show", id: clinicDetailInstance.id)
    }

    def delete(Long id) {
        def clinicDetailInstance = ClinicDetail.get(id)
        if (!clinicDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "list")
            return
        }

        try {
            clinicDetailInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'clinicDetail.label', default: 'ClinicDetail'), id])
            redirect(action: "show", id: id)
        }
    }
}
