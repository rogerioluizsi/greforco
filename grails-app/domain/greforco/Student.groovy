package greforco

class Student {
	
	
	  Date dateCreated

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
    }
    static belongsTo = [user: User]
}
