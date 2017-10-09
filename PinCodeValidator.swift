//
//  PinCodeValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

private let pinCodeRegex = "\\d{6}"

public class PinCodeValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: pinCodeRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
}
