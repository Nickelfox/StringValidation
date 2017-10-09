//
//  PartNameValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

import Foundation

public class PartNameValidator: StringValidator {
	
	private let alphabeticValidator = AlphabeticValidator()
	
    public init() { }

    public func validate(_ string: String?) -> Bool {
		return self.alphabeticValidator.validate(string)
    }
}

