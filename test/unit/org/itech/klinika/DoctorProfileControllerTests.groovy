package org.itech.klinika



import org.junit.*
import grails.test.mixin.*

@TestFor(DoctorProfileController)
@Mock(DoctorProfile)
class DoctorProfileControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/doctorProfile/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.doctorProfileInstanceList.size() == 0
        assert model.doctorProfileInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.doctorProfileInstance != null
    }

    void testSave() {
        controller.save()

        assert model.doctorProfileInstance != null
        assert view == '/doctorProfile/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/doctorProfile/show/1'
        assert controller.flash.message != null
        assert DoctorProfile.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/doctorProfile/list'

        populateValidParams(params)
        def doctorProfile = new DoctorProfile(params)

        assert doctorProfile.save() != null

        params.id = doctorProfile.id

        def model = controller.show()

        assert model.doctorProfileInstance == doctorProfile
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/doctorProfile/list'

        populateValidParams(params)
        def doctorProfile = new DoctorProfile(params)

        assert doctorProfile.save() != null

        params.id = doctorProfile.id

        def model = controller.edit()

        assert model.doctorProfileInstance == doctorProfile
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/doctorProfile/list'

        response.reset()

        populateValidParams(params)
        def doctorProfile = new DoctorProfile(params)

        assert doctorProfile.save() != null

        // test invalid parameters in update
        params.id = doctorProfile.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/doctorProfile/edit"
        assert model.doctorProfileInstance != null

        doctorProfile.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/doctorProfile/show/$doctorProfile.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        doctorProfile.clearErrors()

        populateValidParams(params)
        params.id = doctorProfile.id
        params.version = -1
        controller.update()

        assert view == "/doctorProfile/edit"
        assert model.doctorProfileInstance != null
        assert model.doctorProfileInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/doctorProfile/list'

        response.reset()

        populateValidParams(params)
        def doctorProfile = new DoctorProfile(params)

        assert doctorProfile.save() != null
        assert DoctorProfile.count() == 1

        params.id = doctorProfile.id

        controller.delete()

        assert DoctorProfile.count() == 0
        assert DoctorProfile.get(doctorProfile.id) == null
        assert response.redirectedUrl == '/doctorProfile/list'
    }
}
