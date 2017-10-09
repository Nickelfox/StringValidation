//
//  PartNameValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


import Foundation

public class PartNameValidator: StringValidator {
	
	private let alphabeticValidator = AlphabeticValidator()
	
    public init() { }

    public func validate(_ string: String?) -> Bool {
		return self.alphabeticValidator.validate(string)
    }
}

