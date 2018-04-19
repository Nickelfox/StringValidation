//
//  PinCodeValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let pinCodeRegex = "\\d{6}"

public class PinCodeValidator: RegexValidator {
	
	public init() {
		super.init(regex: pinCodeRegex)
	}
	
	override public func validate(_ string: String?) -> Bool {
		return super.validate(string)
	}
}
