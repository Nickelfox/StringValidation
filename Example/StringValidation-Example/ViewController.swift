//
//  ViewController.swift
//  StringValidation-Example
//
//  Created by Ravindra Soni on 26/07/17.
//  Copyright © 2017 Nickelfox Soni. All rights reserved.
//

import UIKit
import StringValidation

enum ValidatorType: String {
	
	case alphabetic = "alphabetic"
	case numeric = "numeric"
	case creditCard = "creditCard"
	case creditExpiryDate = "creditExpiryDate"
	case creditCardVerification = "creditCardVerification"
	case email = "email"
	case emptyOrNil = "emptyOrNil"
	case name = "name"
	case phone = "phone"
	case pincode = "pincode"
	case url = "url"
	
	static var all: [ValidatorType] {
		return [
			ValidatorType.alphabetic,
			ValidatorType.numeric,
			ValidatorType.creditCard,
			ValidatorType.creditExpiryDate,
			ValidatorType.creditCardVerification,
			ValidatorType.email,
			ValidatorType.emptyOrNil,
			ValidatorType.name,
			ValidatorType.phone,
			ValidatorType.pincode,
			ValidatorType.url
		]
	}
}

class ViewController: UIViewController {

	@IBOutlet var textField: UITextField!
	@IBOutlet var pickerView: UIPickerView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func validate() {
		let i = self.pickerView.selectedRow(inComponent: 0)
		let validatorType = ValidatorType.all[i]
		var valid = false
		switch validatorType {
		case .alphabetic: valid = AlphabeticValidator().validate(self.textField.text)
		case .numeric: valid = NumericValidator().validate(self.textField.text)
		case .creditCard: valid = CCNumberValidator().validate(self.textField.text)
		case .creditExpiryDate: valid = CCExpiryDateValidator().validate(self.textField.text)
		case .creditCardVerification: valid = CCVerificationCodeValidator().validate(self.textField.text)
		case .email: valid = EmailValidator().validate(self.textField.text)
		case .emptyOrNil: valid = EmptyOrNilValidator().validate(self.textField.text)
		case .name: valid = AlphabeticValidator().validate(self.textField.text)
		case .phone: valid = PhoneValidator().validate(self.textField.text)
		case .pincode: valid = PinCodeValidator().validate(self.textField.text)
		case .url: valid = UrlValidator().validate(self.textField.text)
		}
		
		self.textField.layer.borderWidth = 1.0
		self.textField.layer.borderColor = valid ? UIColor.green.cgColor : UIColor.red.cgColor
	}

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return ValidatorType.all.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return ValidatorType.all[row].rawValue.capitalized
	}

}
