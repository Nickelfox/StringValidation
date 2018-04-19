//
//  PhoneValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


import PhoneNumberKit

private let phoneRegex = "^\\d{10}$"

public class PhoneValidator: StringValidator {
	
	public let regionCode: String?
	
	private let phoneNumberKit = PhoneNumberKit()
	
	public init(regionCode: String? = nil) {
		self.regionCode = regionCode
	}
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		
		if let regionCode = self.regionCode {
			do {
				try _ = self.phoneNumberKit.parse(string, withRegion: regionCode)
				return true
			} catch {
				return false
			}
		} else {
			do {
				try _ = self.phoneNumberKit.parse(string)
				return true
			} catch {
				return false
			}
		}
	}
	
}
