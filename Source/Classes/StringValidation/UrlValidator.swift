//
//  UrlValidator.swift
//  StringValidator
//
//  Created by Ravindra Soni on 08/10/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

public class UrlValidator: StringValidator {
	
	public init() { }
	
	public func validate(_ string: String?) -> Bool {
		guard let string = string else { return false }
		if string.isValidURL {
			return true
		}
		return false
	}
}

extension String {
	public var isValidURL: Bool {
		if let url = URL(string: self)  {
			return UIApplication.shared.canOpenURL(url)
		} else {
			return false
		}
	}
	
}
