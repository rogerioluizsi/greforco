package greforco

class Student {
	
	
	  Date dateCreated
	  String email
	  String name
	  String cpf
	  String scholarity
	  String fone
	  String whatsapp
	  String skype
	  String gender
	  String addrress
	  String city
	  String state



    static constraints = {
    	cpf(nullable:true, blank:true)
    	whatsapp(nullable:true, blank:true)
		gender(nullable:true, blank:true)
		scholarity(nullable:true, blank:true)
		user(nullable:true, blank:true)
		fone(nullable:true, blank:true)
		skype(nullable:true, blank:true)
		addrress(nullable:true, blank:true)
		city (nullable:true, blank:true)
		state(nullable:true, blank:true)


    }
    static belongsTo = [user: User]
}
