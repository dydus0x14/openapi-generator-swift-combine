//
// GroupRoles.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GroupRoles: Codable {
    public var member: String?
    public var moderator: String?
    public var admin: String?

    public init(member: String? = nil, moderator: String? = nil, admin: String? = nil) {
        self.member = member
        self.moderator = moderator
        self.admin = admin
    }
}