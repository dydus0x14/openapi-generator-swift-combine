//
// ModelError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ModelError: Codable {
    public var code: Int?
    public var message: String?

    public init(code: Int? = nil, message: String? = nil) {
        self.code = code
        self.message = message
    }
}