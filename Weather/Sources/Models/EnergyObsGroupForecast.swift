//
// EnergyObsGroupForecast.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EnergyObsGroupForecast: Codable {
    /// City name (closest)
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
    /// Degree day threshold units
    public var thresholdUnits: String?
    /// Degree day threshold
    public var thresholdValue: String?
    public var data: [EnergyObsSeries]?

    public init(cityName: String? = nil, stateCode: String? = nil, countryCode: String? = nil, timezone: String? = nil, lat: String? = nil, lon: String? = nil, thresholdUnits: String? = nil, thresholdValue: String? = nil, data: [EnergyObsSeries]? = nil) {
        self.cityName = cityName
        self.stateCode = stateCode
        self.countryCode = countryCode
        self.timezone = timezone
        self.lat = lat
        self.lon = lon
        self.thresholdUnits = thresholdUnits
        self.thresholdValue = thresholdValue
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cityName = "city_name"
        case stateCode = "state_code"
        case countryCode = "country_code"
        case timezone
        case lat
        case lon
        case thresholdUnits = "threshold_units"
        case thresholdValue = "threshold_value"
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
        thresholdUnits = try container.decodeIfPresent(String.self, forKey: .thresholdUnits)
        thresholdValue = try container.decodeIfPresent(String.self, forKey: .thresholdValue)
        data = try container.decodeIfPresent([EnergyObsSeries].self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cityName, forKey: .cityName)
        try container.encodeIfPresent(stateCode, forKey: .stateCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(lon, forKey: .lon)
        try container.encodeIfPresent(thresholdUnits, forKey: .thresholdUnits)
        try container.encodeIfPresent(thresholdValue, forKey: .thresholdValue)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
