//
//  FullNameValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

public class FullNameValidator: StringValidator {
	
	public init() { }
	
	public class func validate(_ string: String?) -> Bool {
		return FullNameValidator().validate(string)
	}
	
	public func validate(_ string: String?) -> Bool {
		guard  let string = string else { return false }
		
		if !string.isAlphabetic {
			return false
		}
		let name: [String] = string.components(separatedBy: " ")
		if name.count == 2 && name[1].characters.count > 1 {
			return true
		}
		return false
	}
}
