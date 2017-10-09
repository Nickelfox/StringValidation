//
//  PinCodeValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let pinCodeRegex = "\\d{6}"

public class PinCodeValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: pinCodeRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
}
