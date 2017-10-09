//
//  EmptyOrNilValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


open class EmptyOrNilValidator: StringValidator {
	
	public init() { }
	
	public class func validate(_ string: String?) -> Bool {
		return EmptyOrNilValidator().validate(string)
	}
	
	public func validate(_ string: String?) -> Bool {
		guard  let string = string else { return false }
		return !string.isEmpty
	}
	
}
