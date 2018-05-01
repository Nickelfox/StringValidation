//
//  ValidationTextView.swift
//  FormValidation
//
//  Created by Abhishek on 03/07/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import UIKit

class ValidationTextView: UITextView, ValidatableInput {
	public var inputText: String? {
		return self.text
	}
	public var error: String?
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
        
        if self.isOptional {
            self.decorateFor(.normal)
            return
        }

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

extension ValidationTextView: UITextViewDelegate {
	func textViewDidEndEditing(_ textView: UITextView) {
		self.validateSilently()
	}
	func textViewDidBeginEditing(_ textView: UITextView) {
		self.decorateFor(.normal)
	}
}
