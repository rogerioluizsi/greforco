package greforco

class Matter {
	static belongsTo = [areaofknowledge: Areaofknowledge]
	String name
	String description
	Date dateCreated
    static constraints = {
    }
}
