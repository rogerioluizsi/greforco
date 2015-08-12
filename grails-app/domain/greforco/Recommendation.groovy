package greforco

class Recommendation {
	static belongsTo = [enrollment: Enrollment]

	String rating
	String description
	Date course_date
	Date dateCraeted

    static constraints = {
    }
}
