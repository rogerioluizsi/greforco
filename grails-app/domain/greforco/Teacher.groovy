package greforco

class Teacher {
	static belongsTo = [user: User]
	String formation
    String university
    Date dateCreated

    static constraints = {
    	user(nullable:true, blank:true)
    }
}
