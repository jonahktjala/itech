package org.itech.klinika



import org.junit.*
import grails.test.mixin.*

@TestFor(ReceptionistProfileController)
@Mock(ReceptionistProfile)
class ReceptionistProfileControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/receptionistProfile/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.receptionistProfileInstanceList.size() == 0
        assert model.receptionistProfileInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.receptionistProfileInstance != null
    }

    void testSave() {
        controller.save()

        assert model.receptionistProfileInstance != null
        assert view == '/receptionistProfile/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/receptionistProfile/show/1'
        assert controller.flash.message != null
        assert ReceptionistProfile.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/receptionistProfile/list'

        populateValidParams(params)
        def receptionistProfile = new ReceptionistProfile(params)

        assert receptionistProfile.save() != null

        params.id = receptionistProfile.id

        def model = controller.show()

        assert model.receptionistProfileInstance == receptionistProfile
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/receptionistProfile/list'

        populateValidParams(params)
        def receptionistProfile = new ReceptionistProfile(params)

        assert receptionistProfile.save() != null

        params.id = receptionistProfile.id

        def model = controller.edit()

        assert model.receptionistProfileInstance == receptionistProfile
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/receptionistProfile/list'

        response.reset()

        populateValidParams(params)
        def receptionistProfile = new ReceptionistProfile(params)

        assert receptionistProfile.save() != null

        // test invalid parameters in update
        params.id = receptionistProfile.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/receptionistProfile/edit"
        assert model.receptionistProfileInstance != null

        receptionistProfile.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/receptionistProfile/show/$receptionistProfile.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        receptionistProfile.clearErrors()

        populateValidParams(params)
        params.id = receptionistProfile.id
        params.version = -1
        controller.update()

        assert view == "/receptionistProfile/edit"
        assert model.receptionistProfileInstance != null
        assert model.receptionistProfileInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/receptionistProfile/list'

        response.reset()

        populateValidParams(params)
        def receptionistProfile = new ReceptionistProfile(params)

        assert receptionistProfile.save() != null
        assert ReceptionistProfile.count() == 1

        params.id = receptionistProfile.id

        controller.delete()

        assert ReceptionistProfile.count() == 0
        assert ReceptionistProfile.get(receptionistProfile.id) == null
        assert response.redirectedUrl == '/receptionistProfile/list'
    }
}
