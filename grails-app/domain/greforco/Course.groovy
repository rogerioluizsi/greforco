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


	Course(String name, String description, String value, Matter matter, String evaluation) {
		this()
		this.name = name
		this.description = description
		this.evaluation = evaluation
		this.matter = matter
		this.value = value 
	}


    static constraints = {
    	teacher(nullable:true, blank:true)
    }
}
