//
//  NumericValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 09/10/17.
//
//

private let numericRegex = "[0-9]+$"

public class NumericValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: numericRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
