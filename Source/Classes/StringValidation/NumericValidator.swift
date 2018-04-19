//
//  NumericValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


private let numericRegex = "[0-9]+$"

public class NumericValidator: RegexValidator {
	
	public init() {
		super.init(regex: numericRegex)
	}
	
	override public func validate(_ string: String?) -> Bool {
		return super.validate(string)
	}
	
}
