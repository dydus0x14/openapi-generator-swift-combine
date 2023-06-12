//
// HistoryObj.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct HistoryObj: Codable {
    /// Unix Timestamp
    public var ts: Double?
    /// Timestamp in local time
    public var timestampLocal: String?
    /// Timestamp UTC
    public var timestampUtc: String?
    /// Data revision status (interim or final)
    public var revisionStatus: String?
    /// Date in format \"YYYY-MM-DD:HH\". All datetime is in (UTC)
    public var datetime: String?
    /// Sea level pressure (mb)
    public var slp: Double?
    /// Pressure (mb)
    public var pres: Double?
    /// Relative Humidity as a percentage (%)
    public var rh: Int?
    /// Dew point (Default Celcius)
    public var dewpt: Int?
    /// Temperature (Default Celcius)
    public var temp: Double?
    /// Apparent Temperature or Wind Chill/Heat Index (Default Celcius)
    public var appTemp: Double?
    /// Wind Speed (Default m/s)
    public var windSpd: Double?
    /// Wind Gust Speed - Default (m/s)
    public var windGustSpd: Double?
    /// Wind direction (Degrees)
    public var windDir: Int?
    /// UV Index (1-11+)
    public var uv: Double?
    /// Estimated solar radiation (W/m^2)
    public var solarRad: Double?
    /// Global horizontal solar irradiance (W/m^2)
    public var ghi: Double?
    /// Diffuse normal solar irradiance (W/m^2)
    public var dhi: Double?
    /// Direct normal solar irradiance (W/m^2)
    public var dni: Double?
    /// Solar hour angle (Degrees)
    public var hAngle: Double?
    /// Solar elevation angle (Degrees)
    public var elevAngle: Double?
    /// Azimuth angle (Degrees)
    public var azimuth: Double?
    /// Visibility (KM)
    public var vis: Double?
    /// Part of the day (d = day, n = night)
    public var pod: String?
    public var weather: HistoryObjWeather?
    /// Cloud Cover 0-100 (%)
    public var clouds: Int?
    /// Liquid equivalent precipitation - Default (mm)
    public var precip: Double?
    /// Snowfall - Default (mm)
    public var snow: Double?

    public init(ts: Double? = nil, timestampLocal: String? = nil, timestampUtc: String? = nil, revisionStatus: String? = nil, datetime: String? = nil, slp: Double? = nil, pres: Double? = nil, rh: Int? = nil, dewpt: Int? = nil, temp: Double? = nil, appTemp: Double? = nil, windSpd: Double? = nil, windGustSpd: Double? = nil, windDir: Int? = nil, uv: Double? = nil, solarRad: Double? = nil, ghi: Double? = nil, dhi: Double? = nil, dni: Double? = nil, hAngle: Double? = nil, elevAngle: Double? = nil, azimuth: Double? = nil, vis: Double? = nil, pod: String? = nil, weather: HistoryObjWeather? = nil, clouds: Int? = nil, precip: Double? = nil, snow: Double? = nil) {
        self.ts = ts
        self.timestampLocal = timestampLocal
        self.timestampUtc = timestampUtc
        self.revisionStatus = revisionStatus
        self.datetime = datetime
        self.slp = slp
        self.pres = pres
        self.rh = rh
        self.dewpt = dewpt
        self.temp = temp
        self.appTemp = appTemp
        self.windSpd = windSpd
        self.windGustSpd = windGustSpd
        self.windDir = windDir
        self.uv = uv
        self.solarRad = solarRad
        self.ghi = ghi
        self.dhi = dhi
        self.dni = dni
        self.hAngle = hAngle
        self.elevAngle = elevAngle
        self.azimuth = azimuth
        self.vis = vis
        self.pod = pod
        self.weather = weather
        self.clouds = clouds
        self.precip = precip
        self.snow = snow
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ts
        case timestampLocal = "timestamp_local"
        case timestampUtc = "timestamp_utc"
        case revisionStatus = "revision_status"
        case datetime
        case slp
        case pres
        case rh
        case dewpt
        case temp
        case appTemp = "app_temp"
        case windSpd = "wind_spd"
        case windGustSpd = "wind_gust_spd"
        case windDir = "wind_dir"
        case uv
        case solarRad = "solar_rad"
        case ghi
        case dhi
        case dni
        case hAngle = "h_angle"
        case elevAngle = "elev_angle"
        case azimuth
        case vis
        case pod
        case weather
        case clouds
        case precip
        case snow
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        ts = try container.decodeIfPresent(Double.self, forKey: .ts)
        timestampLocal = try container.decodeIfPresent(String.self, forKey: .timestampLocal)
        timestampUtc = try container.decodeIfPresent(String.self, forKey: .timestampUtc)
        revisionStatus = try container.decodeIfPresent(String.self, forKey: .revisionStatus)
        datetime = try container.decodeIfPresent(String.self, forKey: .datetime)
        slp = try container.decodeIfPresent(Double.self, forKey: .slp)
        pres = try container.decodeIfPresent(Double.self, forKey: .pres)
        rh = try container.decodeIfPresent(Int.self, forKey: .rh)
        dewpt = try container.decodeIfPresent(Int.self, forKey: .dewpt)
        temp = try container.decodeIfPresent(Double.self, forKey: .temp)
        appTemp = try container.decodeIfPresent(Double.self, forKey: .appTemp)
        windSpd = try container.decodeIfPresent(Double.self, forKey: .windSpd)
        windGustSpd = try container.decodeIfPresent(Double.self, forKey: .windGustSpd)
        windDir = try container.decodeIfPresent(Int.self, forKey: .windDir)
        uv = try container.decodeIfPresent(Double.self, forKey: .uv)
        solarRad = try container.decodeIfPresent(Double.self, forKey: .solarRad)
        ghi = try container.decodeIfPresent(Double.self, forKey: .ghi)
        dhi = try container.decodeIfPresent(Double.self, forKey: .dhi)
        dni = try container.decodeIfPresent(Double.self, forKey: .dni)
        hAngle = try container.decodeIfPresent(Double.self, forKey: .hAngle)
        elevAngle = try container.decodeIfPresent(Double.self, forKey: .elevAngle)
        azimuth = try container.decodeIfPresent(Double.self, forKey: .azimuth)
        vis = try container.decodeIfPresent(Double.self, forKey: .vis)
        pod = try container.decodeIfPresent(String.self, forKey: .pod)
        weather = try container.decodeIfPresent(HistoryObjWeather.self, forKey: .weather)
        clouds = try container.decodeIfPresent(Int.self, forKey: .clouds)
        precip = try container.decodeIfPresent(Double.self, forKey: .precip)
        snow = try container.decodeIfPresent(Double.self, forKey: .snow)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ts, forKey: .ts)
        try container.encodeIfPresent(timestampLocal, forKey: .timestampLocal)
        try container.encodeIfPresent(timestampUtc, forKey: .timestampUtc)
        try container.encodeIfPresent(revisionStatus, forKey: .revisionStatus)
        try container.encodeIfPresent(datetime, forKey: .datetime)
        try container.encodeIfPresent(slp, forKey: .slp)
        try container.encodeIfPresent(pres, forKey: .pres)
        try container.encodeIfPresent(rh, forKey: .rh)
        try container.encodeIfPresent(dewpt, forKey: .dewpt)
        try container.encodeIfPresent(temp, forKey: .temp)
        try container.encodeIfPresent(appTemp, forKey: .appTemp)
        try container.encodeIfPresent(windSpd, forKey: .windSpd)
        try container.encodeIfPresent(windGustSpd, forKey: .windGustSpd)
        try container.encodeIfPresent(windDir, forKey: .windDir)
        try container.encodeIfPresent(uv, forKey: .uv)
        try container.encodeIfPresent(solarRad, forKey: .solarRad)
        try container.encodeIfPresent(ghi, forKey: .ghi)
        try container.encodeIfPresent(dhi, forKey: .dhi)
        try container.encodeIfPresent(dni, forKey: .dni)
        try container.encodeIfPresent(hAngle, forKey: .hAngle)
        try container.encodeIfPresent(elevAngle, forKey: .elevAngle)
        try container.encodeIfPresent(azimuth, forKey: .azimuth)
        try container.encodeIfPresent(vis, forKey: .vis)
        try container.encodeIfPresent(pod, forKey: .pod)
        try container.encodeIfPresent(weather, forKey: .weather)
        try container.encodeIfPresent(clouds, forKey: .clouds)
        try container.encodeIfPresent(precip, forKey: .precip)
        try container.encodeIfPresent(snow, forKey: .snow)
    }
}