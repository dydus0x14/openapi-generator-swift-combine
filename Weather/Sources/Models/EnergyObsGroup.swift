//
// EnergyObsGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EnergyObsGroup: Codable {
    /// Count of found observations
    public var count: Int?
    /// Start Date
    public var startDate: Int?
    /// End Date
    public var endDate: Int?
    public var data: [EnergyObs]?

    public init(count: Int? = nil, startDate: Int? = nil, endDate: Int? = nil, data: [EnergyObs]? = nil) {
        self.count = count
        self.startDate = startDate
        self.endDate = endDate
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case startDate = "start_date"
        case endDate = "end_date"
        case data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decodeIfPresent(Int.self, forKey: .count)
        startDate = try container.decodeIfPresent(Int.self, forKey: .startDate)
        endDate = try container.decodeIfPresent(Int.self, forKey: .endDate)
        data = try container.decodeIfPresent([EnergyObs].self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
