//
//  EmailValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//


public class EmailValidator: StringValidator {
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		if string.isValidEmail {
			return true
		}
		return false
	}
	
}
