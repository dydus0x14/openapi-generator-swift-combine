//
// GetPhotoExifByID200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetPhotoExifByID200Response: Codable {
    public var photo: GetPhotoExifByID200ResponsePhoto?
    public var stat: String?

    public init(photo: GetPhotoExifByID200ResponsePhoto? = nil, stat: String? = nil) {
        self.photo = photo
        self.stat = stat
    }
}