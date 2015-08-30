package greforco

class Teacher {
	static belongsTo = [user: User]
	String formation
    String university
    Date dateCreated

    Teacher(User user, String formation, String university) {
		this()
		this.user = user
		this.formation = formation
		this.university = university
	}

    static constraints = {
    	user(nullable:true, blank:true)
    }
}
