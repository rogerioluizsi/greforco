package greforco

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.*
import greforco.Role
import greforco.UserRole
import greforco.User

class HomeController {

   def index(Integer max) {
   		//def profs = Teacher.getAll()
        params.max = Math.min(max ?: 10, 100)
        respond Teacher.list(params), model:[teacherInstanceCount: Teacher.count(), profs: Teacher.getAll()]
    }

    def termos(){}

	def sobre(){}

	def funciona(){}
   
    def perfil() {}
    
     //def ifAnyGranted = { attrs, body ->
	 //   System.out.println("${attrs.role}")
 	//}	
        
}
