//
//  AlphabeticValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 09/10/17.
//
//


private let alphabeticRegex = "^[A-z ]+$"

public class AlphabeticValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: alphabeticRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
