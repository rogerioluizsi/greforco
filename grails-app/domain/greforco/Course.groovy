package greforco

class Course {

	static belongsTo = [matter: Matter, teacher: Teacher]

	String name
	//String matter
	//String teacher
	String description
	String value
	String evaluation
	Date dateCreated


    static constraints = {
    }
}
