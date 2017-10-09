//
//  PhoneValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

private let phoneRegex = "^\\d{10}$"

public class PhoneValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: phoneRegex)

	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
