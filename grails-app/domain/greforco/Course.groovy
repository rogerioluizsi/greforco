package greforco

class Course {

	static belongsTo = [matter: Matter, teacher: Teacher]

	String name
	//String matter
	//String teacher
	String description
	String value
	//String evaluation
	Date dateCreated


	Course(Teacher teacher, String name, String description, String value, Matter matter) {
		this()
		this.teacher = teacher
		this.name = name
		this.description = description
		//this.evaluation = evaluation
		this.matter = matter
		this.value = value 
	}


    static constraints = {
    	description(nullable:true, blank:true)
    }
}
