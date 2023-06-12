//
// HistorySubhourly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct HistorySubhourly: Codable {
    /// City name (Closest)
    public var cityName: String?
    /// State abbreviation
    public var stateCode: String?
    /// Country abbreviation
    public var countryCode: String?
    /// Local IANA time zone
    public var timezone: String?
    /// Latitude
    public var lat: String?
    /// Longitude
    public var lon: String?
    /// List of data sources used in response
    public var sources: [String]?
    public var data: [HistoryObj]?

    public init(cityName: String? = nil, stateCode: String? = nil, countryCode: String? = nil, timezone: String? = nil, lat: String? = nil, lon: String? = nil, sources: [String]? = nil, data: [HistoryObj]? = nil) {
        self.cityName = cityName
        self.stateCode = stateCode
        self.countryCode = countryCode
        self.timezone = timezone
        self.lat = lat
        self.lon = lon
        self.sources = sources
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cityName = "city_name"
        case stateCode = "state_code"
        case countryCode = "country_code"
        case timezone
        case lat
        case lon
        case sources
        case data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cityName = try container.decodeIfPresent(String.self, forKey: .cityName)
        stateCode = try container.decodeIfPresent(String.self, forKey: .stateCode)
        countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        lat = try container.decodeIfPresent(String.self, forKey: .lat)
        lon = try container.decodeIfPresent(String.self, forKey: .lon)
        sources = try container.decodeIfPresent([String].self, forKey: .sources)
        data = try container.decodeIfPresent([HistoryObj].self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cityName, forKey: .cityName)
        try container.encodeIfPresent(stateCode, forKey: .stateCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(lon, forKey: .lon)
        try container.encodeIfPresent(sources, forKey: .sources)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
