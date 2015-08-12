package greforco



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MatterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Matter.list(params), model:[matterInstanceCount: Matter.count()]
    }

    def show(Matter matterInstance) {
        respond matterInstance
    }

    def create() {
        respond new Matter(params)
    }

    @Transactional
    def save(Matter matterInstance) {
        if (matterInstance == null) {
            notFound()
            return
        }

        if (matterInstance.hasErrors()) {
            respond matterInstance.errors, view:'create'
            return
        }

        matterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'matter.label', default: 'Matter'), matterInstance.id])
                redirect matterInstance
            }
            '*' { respond matterInstance, [status: CREATED] }
        }
    }

    def edit(Matter matterInstance) {
        respond matterInstance
    }

    @Transactional
    def update(Matter matterInstance) {
        if (matterInstance == null) {
            notFound()
            return
        }

        if (matterInstance.hasErrors()) {
            respond matterInstance.errors, view:'edit'
            return
        }

        matterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Matter.label', default: 'Matter'), matterInstance.id])
                redirect matterInstance
            }
            '*'{ respond matterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Matter matterInstance) {

        if (matterInstance == null) {
            notFound()
            return
        }

        matterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Matter.label', default: 'Matter'), matterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'matter.label', default: 'Matter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
