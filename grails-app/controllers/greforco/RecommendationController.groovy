package greforco



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RecommendationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recommendation.list(params), model:[recommendationInstanceCount: Recommendation.count()]
    }

    def show(Recommendation recommendationInstance) {
        respond recommendationInstance
    }

    def create() {
        respond new Recommendation(params)
    }

    @Transactional
    def save(Recommendation recommendationInstance) {
        if (recommendationInstance == null) {
            notFound()
            return
        }

        if (recommendationInstance.hasErrors()) {
            respond recommendationInstance.errors, view:'create'
            return
        }

        def matricula = Enrollment.get(params['enrollment']['id'])
        recommendationInstance.enrollment = matricula
        if (recommendationInstance.save(flush:true)) {
            matricula.evaluation = "1"
            matricula.save(flush: true)
           // redirect controller: "home", action:"meuperfil", method:"GET"
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recommendation.label', default: 'Recommendation'), recommendationInstance.id])
                redirect recommendationInstance
            }
            '*' { respond recommendationInstance, [status: CREATED] }
        }
    }

    def edit(Recommendation recommendationInstance) {
        respond recommendationInstance
    }

    @Transactional
    def update(Recommendation recommendationInstance) {
        if (recommendationInstance == null) {
            notFound()
            return
        }

        if (recommendationInstance.hasErrors()) {
            respond recommendationInstance.errors, view:'edit'
            return
        }

        recommendationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recommendation.label', default: 'Recommendation'), recommendationInstance.id])
                redirect recommendationInstance
            }
            '*'{ respond recommendationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Recommendation recommendationInstance) {

        if (recommendationInstance == null) {
            notFound()
            return
        }

        recommendationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recommendation.label', default: 'Recommendation'), recommendationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recommendation.label', default: 'Recommendation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
