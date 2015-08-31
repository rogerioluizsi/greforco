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

      if (User.count == 0 ) {


          def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
          def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
          def profRole = new Role(authority: 'ROLE_PROF').save(flush: true)

          // criando usuarios
          def admin = new User(username: 'admin', password: 'admin').save(flush: true)
          //def sAdmin = new Student(user: admin, name: "Admin", cpf:"11111111111").save(flush: true)

          def u1 = new User(username: 'paula@reforco.com', password: '123456').save(flush: true)
          def s1 = new Student(user: u1, name: "Paula Noku", cpf:"22222222222").save(flush: true)
          def t1 = new Teacher(user: u1, formation: "Sistemas de Informação", university: "Unimontes").save(flush: true)

          def u2 = new User(username: 'tomas@reforco.com', password: '123456').save(flush: true)
          def s2 = new Student(user: u2, name: "Tomas Turbano Pinto", cpf:"33333333333").save(flush: true)

          def u3 = new User(username: 'nbcj2@reforco.com', password: '123456').save(flush: true)
          def s3 = new Student(user: u3, name: "Nelson Cavalcante", cpf:"22222222222").save(flush: true)
          def t2 = new Teacher(user: u3, formation: "Matemática", university: "Unimontes").save(flush: true)
          
          // ROLES dos usuarios
          UserRole.create admin, adminRole, true
          
          UserRole.create u1, profRole, true
          UserRole.create u1, userRole, true
          
          UserRole.create u2, userRole, true


          // assert User.count() == 1
          // assert Role.count() == 3
          // assert UserRole.count() == 1

          //cadastro areaOfKnowledege

          Areaofknowledge aok1 = new Areaofknowledge (name: "Ciências Exatas e da Terra ").save(flush: true)
          Areaofknowledge aok2 = new Areaofknowledge (name: "Ciências Agrárias").save(flush: true)
          Areaofknowledge aok3 = new Areaofknowledge (name: "Ciências da Saúde ").save(flush: true)
          Areaofknowledge aok4 = new Areaofknowledge (name: "Ciências Biológicas").save(flush: true)
          Areaofknowledge aok5 = new Areaofknowledge (name: "Engenharias").save(flush: true)
          Areaofknowledge aok6 = new Areaofknowledge (name: "Ciências Humanas").save(flush: true)
          Areaofknowledge aok7 = new Areaofknowledge (name: "Ciências Sociais Aplicadas").save(flush: true)
          Areaofknowledge aok8 = new Areaofknowledge (name: "Linguística, Letras e Artes").save(flush: true)
          Areaofknowledge aok9 = new Areaofknowledge (name: "Outros").save(flush: true)

          // materias de Exatas
          Matter m1 = new Matter (areaofknowledge: aok1, name: "Matemática", description: "Cursos de matemática",).save(flush: true)
          Matter m2 = new Matter (areaofknowledge: aok1, name: "Informática", description: "Cursos de Informática").save(flush: true)
          Matter m3 = new Matter (areaofknowledge: aok1, name: "Física", description: "Cursos de física",).save(flush: true)
          Matter m4 = new Matter (areaofknowledge: aok1, name: "Química", description: "Cursos de química",).save(flush: true)

          // materias de Letras
          Matter m5 = new Matter (areaofknowledge: aok8, name: "Português", description: "Cursos de português",).save(flush: true)
          Matter m6 = new Matter (areaofknowledge: aok8, name: "Inglês", description: "Cursos de inglês",).save(flush: true)
          Matter m7 = new Matter (areaofknowledge: aok8, name: "Redação", description: "Cursos de redação",).save(flush: true)

          //cadastro cursos
          Course c1 = new Course (teacher: t1, name: "Programando em Java",description: "curso de programação em java", value: "55", matter: m2).save(flush:true)
          Course c2 = new Course (teacher: t2, name: "Matemática - 1º ano",description: "Matemática do 1º ano do ensino médio", value: "35", matter: m1).save(flush:true)


          // Matriculas
          Enrollment e1 = new Enrollment(course: c1, student: s2, hours: "4").save(flush:true)
          Enrollment e2 = new Enrollment(course: c2, student: s2, hours: "1").save(flush:true)
          Enrollment e3 = new Enrollment(course: c2, student: s1, hours: "2").save(flush:true)

          Recommendation r1 = new Recommendation(enrollment: e3, rating: "1", description: "boa aula").save(flush:true)
          e3.evaluation = "1"
          e3.save(flush:true)
      }
      
   }
    def destroy = {
    }
}
   

