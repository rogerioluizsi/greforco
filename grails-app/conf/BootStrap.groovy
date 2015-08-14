import greforco.Role
import greforco.User
import greforco.UserRole


class BootStrap {

   def init = { servletContext ->
    

      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
      def profRole = new Role(authority: 'ROLE_PROF').save(flush: true)

      def testUser = new User(username: 'admin', password: 'admin')
      testUser.save(flush: true)

      
      
      UserRole.create testUser, adminRole, true
      UserRole.create testUser, profRole, true
      //UserRole.create test2User, profRole, true

      // assert User.count() == 1
      // assert Role.count() == 3
      // assert UserRole.count() == 1
   }
    def destroy = {
    }
}
   

