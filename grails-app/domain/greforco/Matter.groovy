package greforco

class Matter {
	static belongsTo = [areaofknowledge: Areaofknowledge]
	String name
	String description
	Date dateCreated

	Matter(Areaofknowledge areaofknowledge, String name, String description) {
		this()
		this.areaofknowledge = areaofknowledge
		this.name = name
		this.description = description
	}

	static constraints = {
		name blank: false, unique: true
	}
}
