//
//  AlphaNumericValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

private let alphaNumericRegex = "[a-zA-Z0-9]+$"

public class AlphaNumericValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: alphaNumericRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
