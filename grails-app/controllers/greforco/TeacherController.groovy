package greforco



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.*
import greforco.Role
import greforco.UserRole
import greforco.User



@Transactional(readOnly = true)
class TeacherController {

     def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Teacher.list(params), model:[teacherInstanceCount: Teacher.count()]
    }

    def show(Teacher teacherInstance) {
        respond teacherInstance
    }

    def create() {
        respond new Teacher(params)
    }

    @Transactional
    def save(Teacher teacherInstance) {
        if (teacherInstance == null) {
            notFound()
            return
        }

        if (teacherInstance.hasErrors()) {
            respond teacherInstance.errors, view:'create'
            return
        }

        def user = springSecurityService.currentUser // torna-se professor ligado ao usuario
        teacherInstance.user = user
        //Role role = Role.findByAuthority("ROLE_PROF") //dar permiss~ao de professor, acumulando a de user
        //UserRole userRole = new UserRole(user: user, role: role).save(flush:true, failOnError:true)
        teacherInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teacher.label', default: 'Teacher'), teacherInstance.id])
                redirect teacherInstance
            }
            '*' { respond teacherInstance, [status: CREATED] }
        }
    }

    def edit(Teacher teacherInstance) {
        respond teacherInstance
    }

    @Transactional
    def update(Teacher teacherInstance) {
        if (teacherInstance == null) {
            notFound()
            return
        }

        if (teacherInstance.hasErrors()) {
            respond teacherInstance.errors, view:'edit'
            return
        }

        teacherInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Teacher.label', default: 'Teacher'), teacherInstance.id])
                redirect teacherInstance
            }
            '*'{ respond teacherInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Teacher teacherInstance) {

        if (teacherInstance == null) {
            notFound()
            return
        }

        teacherInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Teacher.label', default: 'Teacher'), teacherInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    //@Transactional
    //  def NovoTeacher() {
    //     respond new Teacher(params)
    // }

    // @Transactional
    // def saveNovoTeacher (teacherInstance)


    //     teacherInstance.withTransaction{status ->
    //         try{        
    //             def user = springSecurityService.currentUser
    //             teacherInstance.user = user
    //             teacherInstance.save(flush:true, failOnError:true)               
    //         }catch(Exception exp){
    //             studentInstance.errors.reject(
    //                 'teacher.user.id.inuse',
    //                 ["${params.user.id}"].toArray() as Object[],
    //                 'Voce ja e um professor!!!'
    //             )               
    //             status.setRollbackOnly()
    //         }
    //     }   
}
