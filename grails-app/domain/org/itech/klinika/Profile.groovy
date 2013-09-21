package org.itech.klinika

abstract class Profile {

	String firstName
	String middleName
	String lastName
	Date birthdate
	String mobileNumber
	String telNumber
	String email
	Date registrationDate
	
	static belongsTo  = [normalUser: NormalUser]
	
    static constraints = {
    }
}
