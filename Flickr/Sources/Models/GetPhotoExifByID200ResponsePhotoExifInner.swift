//
// GetPhotoExifByID200ResponsePhotoExifInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetPhotoExifByID200ResponsePhotoExifInner: Codable {
    public var tagspace: String?
    public var tagspaceid: String?
    public var tag: String?
    public var label: String?
    public var raw: GetFavoritesContextByID200ResponseCount?

    public init(tagspace: String? = nil, tagspaceid: String? = nil, tag: String? = nil, label: String? = nil, raw: GetFavoritesContextByID200ResponseCount? = nil) {
        self.tagspace = tagspace
        self.tagspaceid = tagspaceid
        self.tag = tag
        self.label = label
        self.raw = raw
    }
}
