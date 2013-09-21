package org.itech.klinika

class Receptionist extends NormalUser{

	static hasMany = [doctors: Doctor]
	
    static constraints = {
    }
}
