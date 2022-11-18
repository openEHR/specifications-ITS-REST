//
// ModelError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ModelError: Codable {

    public var message: String
    public var validationErrors: [String]

    public init(message: String, validationErrors: [String]) {
        self.message = message
        self.validationErrors = validationErrors
    }


}