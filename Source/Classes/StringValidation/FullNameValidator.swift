//
//  FullNameValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


public class FullNameValidator: StringValidator {
	private let alphabeticValidator = AlphabeticValidator()
	
	public init() { }
	
	public class func validate(_ string: String?) -> Bool {
		return FullNameValidator().validate(string)
	}
	
	public func validate(_ string: String?) -> Bool {
		guard  let string = string else { return false }
		
		if !self.alphabeticValidator.validate(string) {
			return false
		}
		
		let name: [String] = string.components(separatedBy: " ")
		if name.count == 2 && name[1].characters.count > 1 {
			return true
		}
		return false
	}
	
}
