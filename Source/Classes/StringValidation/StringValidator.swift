//
//  StringValidator.swift
//  FormValidations
//
//  Created by Vaibhav Parmar on 15/04/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import Foundation

//private let emptyStringError = "Value Required"
//private let firstNameError = "First Name Required"
//private let lastNameError = "Last Name Required"
//private let fullNameError = "First Name and Last Name Required"
//private let nameRequiredError = "Invalid Name"
//private let emailError = "Invalid Email"
//private let phoneError = "Invalid Phone"
//private let alphaNumericError = "Alpha Numeric Value Required"
//private let urlError = "Invalid URL"
//private let passwordError = "Password must be Alpha Numeric of atleast 8 characters"
//private let pincodeError = "Invalid PIN Code"
//private let ccExpiryError = "Credit Card Expired"
//private let ccNumberError = "Invalid Credit Card Number"
//private let ccVerificationError = "Invalid Credit Card Verification Number"

public protocol StringValidator {
	
	func validate(_ string: String?) -> Bool
	
}












