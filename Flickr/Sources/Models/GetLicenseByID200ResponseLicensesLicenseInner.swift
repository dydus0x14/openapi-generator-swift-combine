//
// GetLicenseByID200ResponseLicensesLicenseInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetLicenseByID200ResponseLicensesLicenseInner: Codable {
    public var id: Int?
    public var name: String?
    public var url: String?

    public init(id: Int? = nil, name: String? = nil, url: String? = nil) {
        self.id = id
        self.name = name
        self.url = url
    }
}
