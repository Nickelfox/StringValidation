//
//  EmailValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

public class EmailValidator: StringValidator {
	
	private let regexValidator = RegexValidator(regex: emailRegex)
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		return self.regexValidator.validate(string)
	}
	
}
