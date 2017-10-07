//
//  EmptyValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

open class EmptyValidator: StringValidator {
	
	public init() { }
	
	public class func validate(_ string: String?) -> Bool {
		return EmptyValidator().validate(string)
	}
	
	public func validate(_ string: String?) -> Bool {
		guard  let string = string else { return false }
		return !string.isEmpty
	}
	
}
