package org.itech.klinika

class Doctor extends NormalUser{

	static hasMany = [receptionists: Receptionist]
	static belongsTo = Receptionist
	
    static constraints = {
    }
}
