//
//  EmailValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

public class EmailValidator: RegexValidator {
		
	public init() {
		super.init(regex: emailRegex)
	}
	
	public override func validate(_ string: String?) -> Bool {
		return super.validate(string)
	}
	
}
