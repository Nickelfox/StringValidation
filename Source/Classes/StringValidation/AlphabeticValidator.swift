//
//  AlphabeticValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//



private let alphabeticRegex = "^[A-z ]+$"

public class AlphabeticValidator: RegexValidator {
	
	public init() {
		super.init(regex: alphabeticRegex)
	}
	
	public override func validate(_ string: String?) -> Bool {
		return super.validate(string)
	}
	
}
