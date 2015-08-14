package greforco



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import greforco.User
import greforco.Role
import greforco.UserRole

@Transactional(readOnly = true)
class StudentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Student.list(params), model:[studentInstanceCount: Student.count()]
    }

    def show(Student studentInstance) {
        respond studentInstance
    }

    def create() {
        respond new Student(params)
    }

    @Transactional
    def save(Student studentInstance) {
        if (studentInstance == null) {
            notFound()
            return
        }

        if (studentInstance.hasErrors()) {
            respond studentInstance.errors, view:'create'
            return
        }

        studentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), studentInstance.id])
                redirect studentInstance
            }
            '*' { respond studentInstance, [status: CREATED] }
        }
    }

    def edit(Student studentInstance) {
        respond studentInstance
    }

    @Transactional
    def update(Student studentInstance) {
        if (studentInstance == null) {
            notFound()
            return
        }

        if (studentInstance.hasErrors()) {
            respond studentInstance.errors, view:'edit'
            return
        }

        studentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Student.label', default: 'Student'), studentInstance.id])
                redirect studentInstance
            }
            '*'{ respond studentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Student studentInstance) {

        if (studentInstance == null) {
            notFound()
            return
        }

        studentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Student.label', default: 'Student'), studentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Secured(['permitAll'])
    def novaConta() {
        respond new Student(params)
    }
    
    @Secured(['permitAll'])
    @Transactional
    def saveNovaConta(Student studentInstance) {          
        
        if (!params.password.equals(params.confirmPassword)) {
            flash.error = 'Senha e a confirmação de senha não são iguais'
            respond view:'novaConta'
            return
        }
        
        if (studentInstance == null) {
            notFound()
            return
        }   

        
        studentInstance.withTransaction{status ->
            try{        
                Role role = Role.findByAuthority("ROLE_USER")
               
                User user = new User(username: params.email, password:params.password, enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true, failOnError:true)
               
                UserRole userRole = new UserRole(user: user, role: role).save(flush:true, failOnError:true)
                studentInstance.user = user
                studentInstance.save(flush:true, failOnError:true)               
            }catch(Exception exp){
                studentInstance.errors.reject(
                    'studentInstance.email.inuse',
                    ["${params.email}"].toArray() as Object[],
                    'O E-mail [{0}] já esta cadastrado!!!'
                )               
                status.setRollbackOnly()
            }
        }   

        if (studentInstance.hasErrors()) {
            respond studentInstance.errors, view:'novaConta'
            return
        }
        
        //flash.message = 'Conta criado com sucesso. Use seu cpf para fazer login'

        render(view:"confirmaNovaConta")

    }
}
