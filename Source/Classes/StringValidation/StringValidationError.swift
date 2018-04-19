//
//  StringValidationError.swift
//  StringValidation
//
//  Created by Ravindra Soni on 19/04/18.
//

import Foundation

public enum StringValidationError: Error {
	case nilString
	case emptyString
	case custom(String)
	
	public var code: Int { return 9999 }
	public var domain: String { return "Validation Error" }
	public var message: String {
		switch self {
		case .nilString: return "String is nil"
		case .emptyString: return "Empty String"
		case .custom(let message): return message
		}
	}

	
}
