//
//  FormViewController.swift
//  StringValidation-Example
//
//  Created by Vaibhav Parmar on 23/04/18.
//  Copyright © 2018 Nickelfox Soni. All rights reserved.
//

import UIKit
import StringValidation

class FormViewController: UITableViewController {

    @IBOutlet var alphabeticField: ValidationTextField!
    @IBOutlet var numericField: ValidationTextField!
    @IBOutlet var creditCardField: ValidationTextField!
    @IBOutlet var creditExpiryDateField: ValidationTextField!
    @IBOutlet var creditCardVerificationField: ValidationTextField!
    @IBOutlet var emailField: ValidationTextField!
    @IBOutlet var emptyOrNilField: ValidationTextField!
    @IBOutlet var nameField: ValidationTextField!
    @IBOutlet var phoneField: ValidationTextField!
    @IBOutlet var pincodeField: ValidationTextField!
    @IBOutlet var urlField: ValidationTextField!
    
    @IBOutlet var alphabeticWarningLabel: UILabel!
    @IBOutlet var numericWarningLabel: UILabel!
    @IBOutlet var creditCardWarningLabel: UILabel!
    @IBOutlet var creditExpiryDateWarningLabel: UILabel!
    @IBOutlet var creditCardVerificationWarningLabel: UILabel!
    @IBOutlet var emailWarningLabel: UILabel!
    @IBOutlet var emptyOrNilWarningLabel: UILabel!
    @IBOutlet var nameWarningLabel: UILabel!
    @IBOutlet var phoneWarningLabel: UILabel!
    @IBOutlet var pincodeWarningLabel: UILabel!
    @IBOutlet var urlWarningLabel: UILabel!
    
    let form = Form()

    var warningLabels: [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTextFieldValidator()
    }
    
    @IBAction func handleValidateTapped(_ sender: UIBarButtonItem) {
        self.view.endEditing(true)
        self.validate()
    }
}

extension FormViewController {
    
    func setupTextFieldValidator() {
        self.alphabeticField.validator = AlphabeticValidator()
        self.alphabeticField.error = "invalid string"
        self.numericField.validator = NumericValidator()
        self.numericField.error = "invalid number"
        self.creditCardField.validator = CCNumberValidator()
        self.creditCardField.error = "invalid credit card"
        self.creditExpiryDateField.validator = CCExpiryDateValidator()
        self.creditExpiryDateField.error = "invalid expiry date"
        self.creditCardVerificationField.validator = CCVerificationCodeValidator()
        self.creditCardVerificationField.error = "invalid CVV code"
        self.emailField.validator = EmailValidator()
        self.emailField.error = "invaild email"
        self.emptyOrNilField.validator = EmptyOrNilValidator()
        self.emptyOrNilField.error = "not nil value"
        self.nameField.validator = AlphabeticValidator()
        self.nameField.error = "invalid name"
        self.phoneField.validator = PhoneValidator()
        self.phoneField.error = "invalid phone number"
        self.pincodeField.validator = PinCodeValidator()
        self.pincodeField.error = "invalid pin code"
        self.urlField.validator = UrlValidator()
        self.urlField.error = "invalid url"
        
        self.form.inputs = [
            self.alphabeticField,
            self.numericField,
            self.creditCardField,
            self.creditExpiryDateField,
            self.creditCardVerificationField,
            self.emailField,
            self.emptyOrNilField,
            self.nameField,
            self.phoneField,
            self.pincodeField,
            self.urlField
        ]
        
        self.warningLabels = [
            self.alphabeticWarningLabel,
            self.numericWarningLabel,
            self.creditCardWarningLabel,
            self.creditExpiryDateWarningLabel,
            self.creditCardVerificationWarningLabel,
            self.emailWarningLabel,
            self.emptyOrNilWarningLabel,
            self.nameWarningLabel,
            self.phoneWarningLabel,
            self.pincodeWarningLabel,
            self.urlWarningLabel
        ]
        
    }
    
    func validate() {
        let validationResult = self.form.validate()
        
        self.warningLabels.forEach { $0.isHidden = true }
        
        switch validationResult {
        case .valid:
            print("Validation Successful")
        case .invalid(let fields):
            fields.forEach {
                guard let field = $0 as? ValidationTextField else { return }
                self.showError(textfield: field)
            }
        }
    }
    
    private func showError(textfield: ValidationTextField) {
        switch textfield {
        case self.alphabeticField:
            self.alphabeticWarningLabel.isHidden = false
            self.alphabeticWarningLabel.text = textfield.error
        case self.numericField:
            self.numericWarningLabel.isHidden = false
            self.numericWarningLabel.text = textfield.error
        case self.creditCardField:
            self.creditCardWarningLabel.isHidden = false
            self.creditCardWarningLabel.text = textfield.error
        case self.creditExpiryDateField:
            self.creditExpiryDateWarningLabel.isHidden = false
            self.creditExpiryDateWarningLabel.text = textfield.error
        case self.creditCardVerificationField:
            self.creditCardVerificationWarningLabel.isHidden = false
            self.creditCardVerificationWarningLabel.text = textfield.error
        case self.emailField:
            self.emailWarningLabel.isHidden = false
            self.emailWarningLabel.text = textfield.error
        case self.emptyOrNilField:
            self.emptyOrNilWarningLabel.isHidden = false
            self.emptyOrNilWarningLabel.text = textfield.error
        case self.nameField:
            self.nameWarningLabel.isHidden = false
            self.nameWarningLabel.text = textfield.error
        case self.phoneField:
            self.phoneWarningLabel.isHidden = false
            self.phoneWarningLabel.text = textfield.error
        case self.pincodeField:
            self.pincodeWarningLabel.isHidden = false
            self.pincodeWarningLabel.text = textfield.error
        case self.urlField:
            self.urlWarningLabel.isHidden = false
            self.urlWarningLabel.text = textfield.error

        default : break
        }
    }
    
}
