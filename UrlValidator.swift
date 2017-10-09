//
//  UrlValidator.swift
//  Pods
//
//  Created by Ravindra Soni on 07/10/17.
//
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
		if let _ = URL(string: self) {
			return true
		} else {
			return false
		}
	}
	
}
