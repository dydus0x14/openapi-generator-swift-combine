//
// ForecastDay.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ForecastDay: Codable {
    /// City Name
    public var cityName: String?
    /// State Abbreviation
    public var stateCode: String?
    /// Country Abbreviation
    public var countryCode: String?
    /// Latitude
    public var lat: String?
    /// Longitude
    public var lon: String?
    /// Local IANA time zone
    public var timezone: String?
    public var data: [Forecast]?

    public init(cityName: String? = nil, stateCode: String? = nil, countryCode: String? = nil, lat: String? = nil, lon: String? = nil, timezone: String? = nil, data: [Forecast]? = nil) {
        self.cityName = cityName
        self.stateCode = stateCode
        self.countryCode = countryCode
        self.lat = lat
        self.lon = lon
        self.timezone = timezone
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cityName = "city_name"
        case stateCode = "state_code"
        case countryCode = "country_code"
        case lat
        case lon
        case timezone
        case data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cityName = try container.decodeIfPresent(String.self, forKey: .cityName)
        stateCode = try container.decodeIfPresent(String.self, forKey: .stateCode)
        countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        lat = try container.decodeIfPresent(String.self, forKey: .lat)
        lon = try container.decodeIfPresent(String.self, forKey: .lon)
        timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        data = try container.decodeIfPresent([Forecast].self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cityName, forKey: .cityName)
        try container.encodeIfPresent(stateCode, forKey: .stateCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(lon, forKey: .lon)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(data, forKey: .data)
    }
}