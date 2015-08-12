package greforco



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AreaofknowledgeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Areaofknowledge.list(params), model:[areaofknowledgeInstanceCount: Areaofknowledge.count()]
    }

    def show(Areaofknowledge areaofknowledgeInstance) {
        respond areaofknowledgeInstance
    }

    def create() {
        respond new Areaofknowledge(params)
    }

    @Transactional
    def save(Areaofknowledge areaofknowledgeInstance) {
        if (areaofknowledgeInstance == null) {
            notFound()
            return
        }

        if (areaofknowledgeInstance.hasErrors()) {
            respond areaofknowledgeInstance.errors, view:'create'
            return
        }

        areaofknowledgeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'areaofknowledge.label', default: 'Areaofknowledge'), areaofknowledgeInstance.id])
                redirect areaofknowledgeInstance
            }
            '*' { respond areaofknowledgeInstance, [status: CREATED] }
        }
    }

    def edit(Areaofknowledge areaofknowledgeInstance) {
        respond areaofknowledgeInstance
    }

    @Transactional
    def update(Areaofknowledge areaofknowledgeInstance) {
        if (areaofknowledgeInstance == null) {
            notFound()
            return
        }

        if (areaofknowledgeInstance.hasErrors()) {
            respond areaofknowledgeInstance.errors, view:'edit'
            return
        }

        areaofknowledgeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Areaofknowledge.label', default: 'Areaofknowledge'), areaofknowledgeInstance.id])
                redirect areaofknowledgeInstance
            }
            '*'{ respond areaofknowledgeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Areaofknowledge areaofknowledgeInstance) {

        if (areaofknowledgeInstance == null) {
            notFound()
            return
        }

        areaofknowledgeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Areaofknowledge.label', default: 'Areaofknowledge'), areaofknowledgeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'areaofknowledge.label', default: 'Areaofknowledge'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
