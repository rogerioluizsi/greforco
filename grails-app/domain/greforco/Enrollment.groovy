package greforco

class Enrollment {
	static belongsTo = [course: Course, student: Student]
	String hours
	String evaluation
	Date dateCreated

	Enrollment(Course course, Student student, String hours){
		this()
		this.course = course
		this.student = student
		this.hours = hours
	}


    static constraints = {
    	evaluation(nullable:true, blank:true)
    	//student(nullable:true, blank:true)
    }
}
