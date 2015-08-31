package greforco

class Course {

	static belongsTo = [matter: Matter, teacher: Teacher]

	String name
	String description
	String value
	Date dateCreated


	Course(Teacher teacher, String name, String description, String value, Matter matter) {
		this()
		this.teacher = teacher
		this.name = name
		this.description = description
		this.matter = matter
		this.value = value 
	}


    static constraints = {
    	description(nullable:true, blank:true)
    }
}
