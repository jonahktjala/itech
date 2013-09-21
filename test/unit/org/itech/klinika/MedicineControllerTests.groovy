package org.itech.klinika



import org.junit.*
import grails.test.mixin.*

@TestFor(MedicineController)
@Mock(Medicine)
class MedicineControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/medicine/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.medicineInstanceList.size() == 0
        assert model.medicineInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.medicineInstance != null
    }

    void testSave() {
        controller.save()

        assert model.medicineInstance != null
        assert view == '/medicine/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/medicine/show/1'
        assert controller.flash.message != null
        assert Medicine.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/medicine/list'

        populateValidParams(params)
        def medicine = new Medicine(params)

        assert medicine.save() != null

        params.id = medicine.id

        def model = controller.show()

        assert model.medicineInstance == medicine
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/medicine/list'

        populateValidParams(params)
        def medicine = new Medicine(params)

        assert medicine.save() != null

        params.id = medicine.id

        def model = controller.edit()

        assert model.medicineInstance == medicine
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/medicine/list'

        response.reset()

        populateValidParams(params)
        def medicine = new Medicine(params)

        assert medicine.save() != null

        // test invalid parameters in update
        params.id = medicine.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/medicine/edit"
        assert model.medicineInstance != null

        medicine.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/medicine/show/$medicine.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        medicine.clearErrors()

        populateValidParams(params)
        params.id = medicine.id
        params.version = -1
        controller.update()

        assert view == "/medicine/edit"
        assert model.medicineInstance != null
        assert model.medicineInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/medicine/list'

        response.reset()

        populateValidParams(params)
        def medicine = new Medicine(params)

        assert medicine.save() != null
        assert Medicine.count() == 1

        params.id = medicine.id

        controller.delete()

        assert Medicine.count() == 0
        assert Medicine.get(medicine.id) == null
        assert response.redirectedUrl == '/medicine/list'
    }
}
