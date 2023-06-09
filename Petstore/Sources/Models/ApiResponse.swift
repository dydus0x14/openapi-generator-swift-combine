//
// ApiResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/// Describes the result of uploading an image resource 
public struct ApiResponse: Codable {
    public var code: Int?
    public var type: String?
    public var message: String?

    public init(code: Int? = nil, type: String? = nil, message: String? = nil) {
        self.code = code
        self.type = type
        self.message = message
    }
}
