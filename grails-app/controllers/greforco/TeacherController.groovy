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
        println "CREATE"
        def user = springSecurityService.currentUser
        Teacher teacher = Teacher.findByUser(user)
         println "pegou os dados"
        if (teacher != null) {
            def id = teacher.id
            flash.message = "${sec.username()}, " + 'voce ja e um professor, mantenha seu perfil atualizado'
            redirect action: "index", method: "GET"
            //redirect action: "show", id: id, method: "GET"
        } 
        
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
        teacherInstance.withTransaction{status ->
        try{        
            def user = springSecurityService.currentUser // torna-se professor ligado ao usuario
            Role role = Role.findByAuthority("ROLE_PROF") //dar permiss~ao de professor, acumulando a de user
              println "role"
            UserRole userRole = new UserRole(user: user, role: role).save(flush:true, failOnError:true)
            userRole.save flush:true
              println "app role"
            teacherInstance.user = user
           
            teacherInstance.save flush:true
            springSecurityService.clearCachedRequestmaps()
            }catch(Exception exp){
                teacherInstance.errors.reject(
                    'teacherInstance.user.id.inuse',
                     //["${params.formation}"].toArray() as Object[],
                    //'professor'
                    render(view:"create")
                )               
                status.setRollbackOnly()

            }
           
        }   
      
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teacher.label', default: 'Teacher'), params.id])
                redirect action: "index", method: "GET"
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
    def afterTeacher(){}
  

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
