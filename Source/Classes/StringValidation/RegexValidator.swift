//
//  RegexValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import Foundation

public class RegexValidator: StringValidator {
	private let regex: String
	
	public init(regex: String) {
		self.regex = regex
	}
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		let predicate = NSPredicate(format: "SELF MATCHES %@", self.regex)
		return predicate.evaluate(with: string)
	}
}
