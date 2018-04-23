//
//  ValidateableInput.swift
//  PhoneNumberKit
//
//  Created by Ravindra Soni on 19/04/18.
//

import Foundation

public protocol ValidatableInput {
	var isOptional: Bool { get }
	var inputText: String? { get }
	var validator: StringValidator? { get }
}
