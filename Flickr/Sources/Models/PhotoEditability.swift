//
// PhotoEditability.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PhotoEditability: Codable {
    public var cancomment: Bool?
    public var canaddmeta: Bool?

    public init(cancomment: Bool? = nil, canaddmeta: Bool? = nil) {
        self.cancomment = cancomment
        self.canaddmeta = canaddmeta
    }
}
