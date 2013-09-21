package org.itech.klinika

import org.springframework.dao.DataIntegrityViolationException

class ReceptionistProfileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [receptionistProfileInstanceList: ReceptionistProfile.list(params), receptionistProfileInstanceTotal: ReceptionistProfile.count()]
    }

    def create() {
        [receptionistProfileInstance: new ReceptionistProfile(params)]
    }

    def save() {
        def receptionistProfileInstance = new ReceptionistProfile(params)
        if (!receptionistProfileInstance.save(flush: true)) {
            render(view: "create", model: [receptionistProfileInstance: receptionistProfileInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), receptionistProfileInstance.id])
        redirect(action: "show", id: receptionistProfileInstance.id)
    }

    def show(Long id) {
        def receptionistProfileInstance = ReceptionistProfile.get(id)
        if (!receptionistProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "list")
            return
        }

        [receptionistProfileInstance: receptionistProfileInstance]
    }

    def edit(Long id) {
        def receptionistProfileInstance = ReceptionistProfile.get(id)
        if (!receptionistProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "list")
            return
        }

        [receptionistProfileInstance: receptionistProfileInstance]
    }

    def update(Long id, Long version) {
        def receptionistProfileInstance = ReceptionistProfile.get(id)
        if (!receptionistProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (receptionistProfileInstance.version > version) {
                receptionistProfileInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile')] as Object[],
                          "Another user has updated this ReceptionistProfile while you were editing")
                render(view: "edit", model: [receptionistProfileInstance: receptionistProfileInstance])
                return
            }
        }

        receptionistProfileInstance.properties = params

        if (!receptionistProfileInstance.save(flush: true)) {
            render(view: "edit", model: [receptionistProfileInstance: receptionistProfileInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), receptionistProfileInstance.id])
        redirect(action: "show", id: receptionistProfileInstance.id)
    }

    def delete(Long id) {
        def receptionistProfileInstance = ReceptionistProfile.get(id)
        if (!receptionistProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "list")
            return
        }

        try {
            receptionistProfileInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'receptionistProfile.label', default: 'ReceptionistProfile'), id])
            redirect(action: "show", id: id)
        }
    }
}
