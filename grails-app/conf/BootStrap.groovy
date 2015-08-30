import greforco.Role
import greforco.User
import greforco.Student
import greforco.Teacher
import greforco.UserRole
import greforco.Areaofknowledge
import greforco.Matter
import greforco.Course
import greforco.Enrollment
import greforco.Recommendation


class BootStrap {

   def init = { servletContext ->
    
      // criando ROLE's
      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
      def profRole = new Role(authority: 'ROLE_PROF').save(flush: true)

      // criando usuarios
      def admin = new User(username: 'admin', password: 'admin')
        admin.save(flush: true)
      //def sAdmin = new Student(user: admin, name: "Admin", cpf:"11111111111")
      //  sAdmin.save(flush: true)

      def user1 = new User(username: 'paula@reforco.com', password: '123456')
        user1.save(flush: true)
      def s1 = new Student(user: user1, name: "Paula Noku", cpf:"22222222222")
        s1.save(flush: true)
      def t1 = new Teacher(user: user1, formation: "Sistemas de Informação", university: "Unimontes")
        t1.save(flush: true)

      def user2 = new User(username: 'tomas@reforco.com', password: '123456')
        user2.save(flush: true)
      def s2 = new Student(user: user2, name: "Tomas Turbano Pinto", cpf:"33333333333")
         s2.save(flush: true)

      
      
      UserRole.create admin, adminRole, true
      
      UserRole.create user1, profRole, true
      UserRole.create user1, userRole, true
      
      UserRole.create user2, userRole, true


      // assert User.count() == 1
      // assert Role.count() == 3
      // assert UserRole.count() == 1

      //cadastro areaOfKnowledege

      Areaofknowledge areaofknowledge1 = new Areaofknowledge (name: "Informatica").save(flush: true)
      Areaofknowledge areaofknowledge2 = new Areaofknowledge (name: "Agrarias").save(flush: true)

      //cadastro materias
      Matter matter1 = new Matter (areaofknowledge: areaofknowledge1, name: "Jogos educaionais", description: "Informatica na educaçao",).save(flush: true)
      Matter matter2 = new Matter (areaofknowledge: areaofknowledge2, , name: "Solos", description: "Solos brasileiros").save(flush: true)

      //cadastro cursos
      //Course course1 = new Course (name: "Educando com informartica",description: "Aulas exploratorias", evaluation: "gasdasfasfaf", matter1, value: "10").save(flush:true)

   }
    def destroy = {
    }
}
   

