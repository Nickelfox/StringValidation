//
//  NumericValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let numericRegex = "[0-9]+$"

public class NumericValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: numericRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
