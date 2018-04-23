//
//  Form.swift
//  FormValidations
//
//  Created by Vaibhav Parmar on 18/04/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import Foundation

public enum FormValidationResult {
	case valid
	case invalid([ValidatableInput])
}

public class Form  {
    
    public init() { }
    
    public var inputs: [ValidatableInput] = []
    
    public func validate() -> FormValidationResult {
		var invalidInputs: [ValidatableInput] = []
        for input in self.inputs {
            if input.isOptional {
				//if optional then check if it has text or not
				if let text = input.inputText, let validator = input.validator {
					if !validator.validate(text) {
						invalidInputs.append(input)
					}
				}
			} else {
				if let text = input.inputText, let validator = input.validator {
					if !validator.validate(text) {
						invalidInputs.append(input)
					}
				} else {
					invalidInputs.append(input)
				}
			}
        }
		return invalidInputs.isEmpty ? .valid : .invalid(invalidInputs)
    }
        
}
