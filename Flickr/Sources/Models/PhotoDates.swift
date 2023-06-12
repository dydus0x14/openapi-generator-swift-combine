//
// PhotoDates.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PhotoDates: Codable {
    public var posted: String?
    public var taken: String?
    public var takengranularity: String?
    public var takenunknown: Bool?
    public var lastupdate: String?

    public init(posted: String? = nil, taken: String? = nil, takengranularity: String? = nil, takenunknown: Bool? = nil, lastupdate: String? = nil) {
        self.posted = posted
        self.taken = taken
        self.takengranularity = takengranularity
        self.takenunknown = takenunknown
        self.lastupdate = lastupdate
    }
}