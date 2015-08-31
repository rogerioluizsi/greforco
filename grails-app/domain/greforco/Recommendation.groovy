package greforco

class Recommendation {
	static belongsTo = [enrollment: Enrollment]

	String rating
	String description
	Date course_date
	Date dateCraeted

	Recommendation(Enrollment enrollment, String rating, String description){
		this()
		this.enrollment = enrollment
		this.rating = rating
		this.description = description
	}

    static constraints = {
    	description(blank: true, nullable: true)
    	course_date(blank: true, nullable: true)
    	dateCraeted(blank: true, nullable: true)
    }
}
