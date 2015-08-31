package greforco

class Areaofknowledge {
	String name
	Date dateCreated

	Areaofknowledge(String name) {
		this()
		this.namme = name
	}

    static constraints = {
    	name(blank: false, unique: true)
    }
}
