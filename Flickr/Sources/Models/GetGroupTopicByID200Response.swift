//
// GetGroupTopicByID200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetGroupTopicByID200Response: Codable {
    public var topic: Topic?
    public var stat: String?

    public init(topic: Topic? = nil, stat: String? = nil) {
        self.topic = topic
        self.stat = stat
    }
}
