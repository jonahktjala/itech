package org.itech.klinika

import org.springframework.dao.DataIntegrityViolationException

class DoctorProfileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [doctorProfileInstanceList: DoctorProfile.list(params), doctorProfileInstanceTotal: DoctorProfile.count()]
    }

    def create() {
        [doctorProfileInstance: new DoctorProfile(params)]
    }

    def save() {
        def doctorProfileInstance = new DoctorProfile(params)
        if (!doctorProfileInstance.save(flush: true)) {
            render(view: "create", model: [doctorProfileInstance: doctorProfileInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), doctorProfileInstance.id])
        redirect(action: "show", id: doctorProfileInstance.id)
    }

    def show(Long id) {
        def doctorProfileInstance = DoctorProfile.get(id)
        if (!doctorProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "list")
            return
        }

        [doctorProfileInstance: doctorProfileInstance]
    }

    def edit(Long id) {
        def doctorProfileInstance = DoctorProfile.get(id)
        if (!doctorProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "list")
            return
        }

        [doctorProfileInstance: doctorProfileInstance]
    }

    def update(Long id, Long version) {
        def doctorProfileInstance = DoctorProfile.get(id)
        if (!doctorProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (doctorProfileInstance.version > version) {
                doctorProfileInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'doctorProfile.label', default: 'DoctorProfile')] as Object[],
                          "Another user has updated this DoctorProfile while you were editing")
                render(view: "edit", model: [doctorProfileInstance: doctorProfileInstance])
                return
            }
        }

        doctorProfileInstance.properties = params

        if (!doctorProfileInstance.save(flush: true)) {
            render(view: "edit", model: [doctorProfileInstance: doctorProfileInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), doctorProfileInstance.id])
        redirect(action: "show", id: doctorProfileInstance.id)
    }

    def delete(Long id) {
        def doctorProfileInstance = DoctorProfile.get(id)
        if (!doctorProfileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "list")
            return
        }

        try {
            doctorProfileInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'doctorProfile.label', default: 'DoctorProfile'), id])
            redirect(action: "show", id: id)
        }
    }
}
