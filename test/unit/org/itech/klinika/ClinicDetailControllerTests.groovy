package org.itech.klinika



import org.junit.*
import grails.test.mixin.*

@TestFor(ClinicDetailController)
@Mock(ClinicDetail)
class ClinicDetailControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/clinicDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.clinicDetailInstanceList.size() == 0
        assert model.clinicDetailInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.clinicDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.clinicDetailInstance != null
        assert view == '/clinicDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/clinicDetail/show/1'
        assert controller.flash.message != null
        assert ClinicDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/clinicDetail/list'

        populateValidParams(params)
        def clinicDetail = new ClinicDetail(params)

        assert clinicDetail.save() != null

        params.id = clinicDetail.id

        def model = controller.show()

        assert model.clinicDetailInstance == clinicDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/clinicDetail/list'

        populateValidParams(params)
        def clinicDetail = new ClinicDetail(params)

        assert clinicDetail.save() != null

        params.id = clinicDetail.id

        def model = controller.edit()

        assert model.clinicDetailInstance == clinicDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/clinicDetail/list'

        response.reset()

        populateValidParams(params)
        def clinicDetail = new ClinicDetail(params)

        assert clinicDetail.save() != null

        // test invalid parameters in update
        params.id = clinicDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/clinicDetail/edit"
        assert model.clinicDetailInstance != null

        clinicDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/clinicDetail/show/$clinicDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        clinicDetail.clearErrors()

        populateValidParams(params)
        params.id = clinicDetail.id
        params.version = -1
        controller.update()

        assert view == "/clinicDetail/edit"
        assert model.clinicDetailInstance != null
        assert model.clinicDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/clinicDetail/list'

        response.reset()

        populateValidParams(params)
        def clinicDetail = new ClinicDetail(params)

        assert clinicDetail.save() != null
        assert ClinicDetail.count() == 1

        params.id = clinicDetail.id

        controller.delete()

        assert ClinicDetail.count() == 0
        assert ClinicDetail.get(clinicDetail.id) == null
        assert response.redirectedUrl == '/clinicDetail/list'
    }
}
