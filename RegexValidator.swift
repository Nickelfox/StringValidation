//
//  RegexValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 09/10/17.
//
//

import Foundation

public struct RegexValidator: StringValidator {
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
