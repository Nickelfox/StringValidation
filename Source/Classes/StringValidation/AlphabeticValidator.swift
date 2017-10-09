//
//  AlphabeticValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//



private let alphabeticRegex = "^[A-z ]+$"

public class AlphabeticValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: alphabeticRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
