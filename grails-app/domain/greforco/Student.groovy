package greforco

class Student {
	
	  static belongsTo = [user: User]
	  String name
	  String cpf
	  String email
	  String scholarity
	  String fone
	  String whatsapp
	  String skype
	  String gender
	  String address
	  String city
	  String state
	  Date dateCreated

	  Student(User user, String name, String cpf) {
		this()
		this.user = user
		this.name = name
		this.cpf = cpf
		this.email = user.username
	}



    static constraints = {
    	cpf(nullable:true, blank:true)
    	email(nullable:true, blank:true)
    	scholarity(nullable:true, blank:true)
    	fone(nullable:true, blank:true)
    	whatsapp(nullable:true, blank:true)
    	skype(nullable:true, blank:true)
		gender(nullable:true, blank:true)
		address(nullable:true, blank:true)
		city (nullable:true, blank:true)
		state(nullable:true, blank:true)		
    }
   
}
