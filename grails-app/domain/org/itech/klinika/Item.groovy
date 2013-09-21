package org.itech.klinika

abstract class Item {
	String name
	String description
	int quantity
	double retailPrice
	boolean isActive

    static constraints = {
		name blank: false
		description blank: false
		quantity blank: false
		
    }
}
