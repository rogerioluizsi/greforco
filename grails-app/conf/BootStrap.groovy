import greforco.Role
import greforco.User
import greforco.UserRole
import greforco.Areaofknowledge
import greforco.Matter
import greforco.Course


class BootStrap {

   def init = { servletContext ->
    

      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
      def profRole = new Role(authority: 'ROLE_PROF').save(flush: true)

      def testUser = new User(username: 'admin', password: 'admin')
      testUser.save(flush: true)

      def testUser2 = new User(username: 'prof', password: 'prof')
       testUser2.save(flush: true)
       
      def testUser3 = new User(username: 'alu', password: 'alu')
       testUser3.save(flush: true)

      def testUser4 = new User(username: 'teste', password: 'teste')
       testUser3.save(flush: true)

      
      
      UserRole.create testUser, adminRole, true
      
      UserRole.create testUser2, profRole, true
      UserRole.create testUser2, userRole, true
      
      UserRole.create testUser3, userRole, true


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
   

