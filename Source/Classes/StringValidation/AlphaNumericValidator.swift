//
//  AlphaNumericValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let alphaNumericRegex = "[a-zA-Z0-9]+$"

public class AlphaNumericValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: alphaNumericRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
