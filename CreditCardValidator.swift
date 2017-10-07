//
//  CreditCardValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
//

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
