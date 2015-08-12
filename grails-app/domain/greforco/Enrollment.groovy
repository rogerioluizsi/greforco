package greforco

class Enrollment {
	static belongsTo = [course: Course, student: Student]
	String hours
	String evaluation
	Date dateCreated



    static constraints = {
    }
}
