//
// GroupThrottle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GroupThrottle: Codable {
    public var count: Int?
    public var mode: String?
    public var remaining: String?

    public init(count: Int? = nil, mode: String? = nil, remaining: String? = nil) {
        self.count = count
        self.mode = mode
        self.remaining = remaining
    }
}
