//
// GetLicenseByID200ResponseLicenses.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetLicenseByID200ResponseLicenses: Codable {
    public var license: [GetLicenseByID200ResponseLicensesLicenseInner]?

    public init(license: [GetLicenseByID200ResponseLicensesLicenseInner]? = nil) {
        self.license = license
    }
}
