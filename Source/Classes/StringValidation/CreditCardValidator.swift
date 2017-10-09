//
//  CreditCardValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//


public class CCNumberValidator: StringValidator {
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		
		if string.isValidCreditCardNumber {
			return true
		}
		return false
	}
	
}

public class CCExpiryDateValidator: StringValidator {
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		
		if string.isValidCreditCardExpirationDate {
			return true
		}
		return false
	}
}


public class CCVerificationCodeValidator: StringValidator {
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		
		if string.isValidCardVerificationCode {
			return true
		}
		return false
	}
	
}

extension String {
	public var isValidCreditCardExpirationDate: Bool {
		if self.characters.count < 4 {
			return false
		}
		let slashIndex: NSRange = (self as NSString).range(of: "/")
		if slashIndex.location == 0 {
			return false
		}
		var monthString: String = self.components(separatedBy: "/")[0]
		var yearString: String = self.components(separatedBy: "/")[1]
		if monthString.characters.count < 0 || yearString.characters.count < 0 {
			return false
		}
		if let month = Int(monthString), var year = Int(yearString) {
			let currentYear: Int = Calendar.current.component(.year, from: Date())
			let currentMonth: Int = Calendar.current.component(.month, from: Date())
			if yearString.characters.count <= 2 {
				year += 2000
			}
			if year == currentYear {
				return ((month >= currentMonth) && (month <= 12) && (month != 0))
			}
			return ((year >= currentYear) && (month <= 12) && (month != 0))
		}
		return true
	}
	
	public var isValidCreditCardNumber: Bool {
		if digitString.characters.count < 12 || digitString.characters.count > 20 {
			return false
		}
		var index: Int = 0
		var oddSum: Int = 0
		var evenSum: Int = 0
		let digitChars = digitString.characters
		for char in digitChars.reversed() {
			index += 1
			if let intChar = Int(String(char)) {
				if index % 2 != 0 {
					oddSum += intChar
				} else {
					let doubledValue = intChar * 2
					evenSum += digitSum(digit: doubledValue)
				}
			}
		}
		if (oddSum+evenSum) % 10 == 0 {
			return true
		}
		return false
	}
	
	public var isValidCardVerificationCode: Bool {
		var digitString = self.digitString
		let digitStringLength = digitString.characters.count
		if (self.characters.count == digitStringLength) && (digitStringLength == 3 || digitStringLength == 4) {
			return true
		}
		return false
	}
	
	public var digitString: String {
		return components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
	}
}

//MARK: Helper Methods

func digitSum( digit: Int) -> Int {
	var digit = digit
	var sum = 0
	while digit > 0 {
		sum += digit % 10
		digit = digit/10
	}
	return sum
}
