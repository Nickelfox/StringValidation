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
    
    let form = Form()

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
        self.numericField.validator = NumericValidator()
        self.creditCardField.validator = CCNumberValidator()
        self.creditExpiryDateField.validator = CCExpiryDateValidator()
        self.creditCardVerificationField.validator = CCVerificationCodeValidator()
        self.emailField.validator = EmailValidator()
        self.emptyOrNilField.validator = EmptyOrNilValidator()
        self.nameField.validator = AlphabeticValidator()
        self.phoneField.validator = PhoneValidator()
        self.pincodeField.validator = PinCodeValidator()
        self.urlField.validator = UrlValidator()
        
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
    }
    
    func validate() {
        let validationResult = self.form.validate()
        
        switch validationResult {
        case .valid:
            print("Validation Successful")
        case .invalid(let fields):
            for field in fields {
                if let field = field as? ValidationTextField {
                    field.decorateFor(.invalid)
                }
            }
        }
    }
}
