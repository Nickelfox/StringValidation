//
//  ValidationTextField.swift
//  FormValidations
//
//  Created by Nickelfox on 31/03/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import UIKit



open class ValidationTextField: UITextField, ValidatableInput {
	public var inputText: String? {
		return self.text
	}
    
//    public var error: String?
    public var error: StringValidationError?
	public var validator: StringValidator?
	public var isOptional = false
	
	required public init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.delegate = self
	}
	
	func validate() -> Bool {
		guard let validator = self.validator, let text = self.text else { return false }
		return validator.validate(text)
	}
	
	func validateSilently() {
		self.decorateFor(self.validate() ? .valid : .invalid)
	}
	
	open func decorateFor(_ state: ValidatableInputState) {
		switch state {
		case .normal:
			self.layer.borderWidth = 0.0
			self.layer.borderColor = UIColor.clear.cgColor
		case .valid:
			self.layer.borderWidth = 0.5
			self.layer.borderColor = UIColor.green.cgColor
		case .invalid:
			self.layer.borderWidth = 0.5
			self.layer.borderColor = UIColor.red.cgColor
		}
		if self.validator == nil { return }
	}

}

extension ValidationTextField: UITextFieldDelegate {
	open func textFieldDidEndEditing(_ textField: UITextField) {
		self.validateSilently()
	}

	open func textFieldDidBeginEditing(_ textField: UITextField) {
		self.decorateFor(.normal)
	}
}
