//
// GetGroupByID200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetGroupByID200Response: Codable {
    public var group: Group?
    public var stat: String?

    public init(group: Group? = nil, stat: String? = nil) {
        self.group = group
        self.stat = stat
    }
}
