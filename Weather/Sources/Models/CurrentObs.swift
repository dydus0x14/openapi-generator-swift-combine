//
// CurrentObs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CurrentObs: Codable {
    /// City name (closest)
    public var cityName: String?
    /// State abbreviation
    public var stateCode: String?
    /// Country abbreviation
    public var countryCode: String?
    /// Local IANA time zone
    public var timezone: String?
    /// Latitude
    public var lat: Double?
    /// Longitude
    public var lon: Double?
    /// Source Station ID
    public var station: String?
    /// List of data sources used in response
    public var sources: [String]?
    /// Visibility - default (M)
    public var vis: Int?
    /// Relative humidity (%)
    public var rh: Int?
    /// Dew point temperature - default (C)
    public var dewpt: Double?
    /// Wind direction (degrees)
    public var windDir: Int?
    /// Cardinal wind direction
    public var windCdir: String?
    /// Cardinal wind direction (text)
    public var windCdirFull: String?
    /// Wind speed - Default (m/s)
    public var windSpeed: Double?
    /// Wind gust speed - Default (m/s)
    public var gust: Double?
    /// Temperature - Default (C)
    public var temp: Double?
    /// Apparent temperature - Default (C)
    public var appTemp: Double?
    /// Cloud cover (%)
    public var clouds: Int?
    public var weather: CurrentObsWeather?
    /// Cycle Hour (UTC) of observation
    public var datetime: String?
    /// Full time (UTC) of observation (YYYY-MM-DD HH:MM)
    public var obTime: String?
    /// Unix Timestamp
    public var ts: Double?
    /// Time (UTC) of Sunrise (HH:MM)
    public var sunrise: String?
    /// Time (UTC) of Sunset (HH:MM)
    public var sunset: String?
    /// Mean sea level pressure in millibars (mb)
    public var slp: Double?
    /// Pressure (mb)
    public var pres: Double?
    /// Air quality index (US EPA standard 0 to +500)
    public var aqi: Double?
    /// UV Index
    public var uv: Double?
    /// Estimated solar radiation (W/m^2)
    public var solarRad: Double?
    /// Global horizontal irradiance (W/m^2)
    public var ghi: Double?
    /// Direct normal irradiance (W/m^2)
    public var dni: Double?
    /// Diffuse horizontal irradiance (W/m^2)
    public var dhi: Double?
    /// Current solar elevation angle (Degrees)
    public var elevAngle: Double?
    /// Current solar hour angle (Degrees)
    public var hourAngle: Double?
    /// Part of the day (d = day, n = night)
    public var pod: String?
    /// Precipitation in last hour - Default (mm)
    public var precip: Double?
    /// Snowfall in last hour - Default (mm)
    public var snow: Double?

    public init(cityName: String? = nil, stateCode: String? = nil, countryCode: String? = nil, timezone: String? = nil, lat: Double? = nil, lon: Double? = nil, station: String? = nil, sources: [String]? = nil, vis: Int? = nil, rh: Int? = nil, dewpt: Double? = nil, windDir: Int? = nil, windCdir: String? = nil, windCdirFull: String? = nil, windSpeed: Double? = nil, gust: Double? = nil, temp: Double? = nil, appTemp: Double? = nil, clouds: Int? = nil, weather: CurrentObsWeather? = nil, datetime: String? = nil, obTime: String? = nil, ts: Double? = nil, sunrise: String? = nil, sunset: String? = nil, slp: Double? = nil, pres: Double? = nil, aqi: Double? = nil, uv: Double? = nil, solarRad: Double? = nil, ghi: Double? = nil, dni: Double? = nil, dhi: Double? = nil, elevAngle: Double? = nil, hourAngle: Double? = nil, pod: String? = nil, precip: Double? = nil, snow: Double? = nil) {
        self.cityName = cityName
        self.stateCode = stateCode
        self.countryCode = countryCode
        self.timezone = timezone
        self.lat = lat
        self.lon = lon
        self.station = station
        self.sources = sources
        self.vis = vis
        self.rh = rh
        self.dewpt = dewpt
        self.windDir = windDir
        self.windCdir = windCdir
        self.windCdirFull = windCdirFull
        self.windSpeed = windSpeed
        self.gust = gust
        self.temp = temp
        self.appTemp = appTemp
        self.clouds = clouds
        self.weather = weather
        self.datetime = datetime
        self.obTime = obTime
        self.ts = ts
        self.sunrise = sunrise
        self.sunset = sunset
        self.slp = slp
        self.pres = pres
        self.aqi = aqi
        self.uv = uv
        self.solarRad = solarRad
        self.ghi = ghi
        self.dni = dni
        self.dhi = dhi
        self.elevAngle = elevAngle
        self.hourAngle = hourAngle
        self.pod = pod
        self.precip = precip
        self.snow = snow
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cityName = "city_name"
        case stateCode = "state_code"
        case countryCode = "country_code"
        case timezone
        case lat
        case lon
        case station
        case sources
        case vis
        case rh
        case dewpt
        case windDir = "wind_dir"
        case windCdir = "wind_cdir"
        case windCdirFull = "wind_cdir_full"
        case windSpeed = "wind_speed"
        case gust
        case temp
        case appTemp = "app_temp"
        case clouds
        case weather
        case datetime
        case obTime = "ob_time"
        case ts
        case sunrise
        case sunset
        case slp
        case pres
        case aqi
        case uv
        case solarRad = "solar_rad"
        case ghi
        case dni
        case dhi
        case elevAngle = "elev_angle"
        case hourAngle = "hour_angle"
        case pod
        case precip
        case snow
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cityName = try container.decodeIfPresent(String.self, forKey: .cityName)
        stateCode = try container.decodeIfPresent(String.self, forKey: .stateCode)
        countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        lat = try container.decodeIfPresent(Double.self, forKey: .lat)
        lon = try container.decodeIfPresent(Double.self, forKey: .lon)
        station = try container.decodeIfPresent(String.self, forKey: .station)
        sources = try container.decodeIfPresent([String].self, forKey: .sources)
        vis = try container.decodeIfPresent(Int.self, forKey: .vis)
        rh = try container.decodeIfPresent(Int.self, forKey: .rh)
        dewpt = try container.decodeIfPresent(Double.self, forKey: .dewpt)
        windDir = try container.decodeIfPresent(Int.self, forKey: .windDir)
        windCdir = try container.decodeIfPresent(String.self, forKey: .windCdir)
        windCdirFull = try container.decodeIfPresent(String.self, forKey: .windCdirFull)
        windSpeed = try container.decodeIfPresent(Double.self, forKey: .windSpeed)
        gust = try container.decodeIfPresent(Double.self, forKey: .gust)
        temp = try container.decodeIfPresent(Double.self, forKey: .temp)
        appTemp = try container.decodeIfPresent(Double.self, forKey: .appTemp)
        clouds = try container.decodeIfPresent(Int.self, forKey: .clouds)
        weather = try container.decodeIfPresent(CurrentObsWeather.self, forKey: .weather)
        datetime = try container.decodeIfPresent(String.self, forKey: .datetime)
        obTime = try container.decodeIfPresent(String.self, forKey: .obTime)
        ts = try container.decodeIfPresent(Double.self, forKey: .ts)
        sunrise = try container.decodeIfPresent(String.self, forKey: .sunrise)
        sunset = try container.decodeIfPresent(String.self, forKey: .sunset)
        slp = try container.decodeIfPresent(Double.self, forKey: .slp)
        pres = try container.decodeIfPresent(Double.self, forKey: .pres)
        aqi = try container.decodeIfPresent(Double.self, forKey: .aqi)
        uv = try container.decodeIfPresent(Double.self, forKey: .uv)
        solarRad = try container.decodeIfPresent(Double.self, forKey: .solarRad)
        ghi = try container.decodeIfPresent(Double.self, forKey: .ghi)
        dni = try container.decodeIfPresent(Double.self, forKey: .dni)
        dhi = try container.decodeIfPresent(Double.self, forKey: .dhi)
        elevAngle = try container.decodeIfPresent(Double.self, forKey: .elevAngle)
        hourAngle = try container.decodeIfPresent(Double.self, forKey: .hourAngle)
        pod = try container.decodeIfPresent(String.self, forKey: .pod)
        precip = try container.decodeIfPresent(Double.self, forKey: .precip)
        snow = try container.decodeIfPresent(Double.self, forKey: .snow)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cityName, forKey: .cityName)
        try container.encodeIfPresent(stateCode, forKey: .stateCode)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(timezone, forKey: .timezone)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(lon, forKey: .lon)
        try container.encodeIfPresent(station, forKey: .station)
        try container.encodeIfPresent(sources, forKey: .sources)
        try container.encodeIfPresent(vis, forKey: .vis)
        try container.encodeIfPresent(rh, forKey: .rh)
        try container.encodeIfPresent(dewpt, forKey: .dewpt)
        try container.encodeIfPresent(windDir, forKey: .windDir)
        try container.encodeIfPresent(windCdir, forKey: .windCdir)
        try container.encodeIfPresent(windCdirFull, forKey: .windCdirFull)
        try container.encodeIfPresent(windSpeed, forKey: .windSpeed)
        try container.encodeIfPresent(gust, forKey: .gust)
        try container.encodeIfPresent(temp, forKey: .temp)
        try container.encodeIfPresent(appTemp, forKey: .appTemp)
        try container.encodeIfPresent(clouds, forKey: .clouds)
        try container.encodeIfPresent(weather, forKey: .weather)
        try container.encodeIfPresent(datetime, forKey: .datetime)
        try container.encodeIfPresent(obTime, forKey: .obTime)
        try container.encodeIfPresent(ts, forKey: .ts)
        try container.encodeIfPresent(sunrise, forKey: .sunrise)
        try container.encodeIfPresent(sunset, forKey: .sunset)
        try container.encodeIfPresent(slp, forKey: .slp)
        try container.encodeIfPresent(pres, forKey: .pres)
        try container.encodeIfPresent(aqi, forKey: .aqi)
        try container.encodeIfPresent(uv, forKey: .uv)
        try container.encodeIfPresent(solarRad, forKey: .solarRad)
        try container.encodeIfPresent(ghi, forKey: .ghi)
        try container.encodeIfPresent(dni, forKey: .dni)
        try container.encodeIfPresent(dhi, forKey: .dhi)
        try container.encodeIfPresent(elevAngle, forKey: .elevAngle)
        try container.encodeIfPresent(hourAngle, forKey: .hourAngle)
        try container.encodeIfPresent(pod, forKey: .pod)
        try container.encodeIfPresent(precip, forKey: .precip)
        try container.encodeIfPresent(snow, forKey: .snow)
    }
}