//
// CurrentAirQualityAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech

import Foundation
import Combine
import OpenAPITransport


open class CurrentAirQualityAPI {
    private let transport: OpenAPITransport
    public var encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .formatted(OpenISO8601DateFormatter())
        return encoder
    }()
    public var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(OpenISO8601DateFormatter())
        return decoder
    }()
    public var baseURL = URL(string: "https://api.weatherbit.io/v2.0")

    public init(_ transport: OpenAPITransport) {
        self.transport = transport
    }


    /// Returns current air quality conditions - Given a City ID.
    /// - GET /current/airquality?city_id={city_id}
    /// - Returns current air quality conditions.
    /// - parameter cityId: (path) City ID. Example: 4487042 
    /// - parameter key: (query) Your registered API key. 
    /// - parameter callback: (query) Wraps return in jsonp callback. Example - callback&#x3D;func (optional)
    /// - returns: AnyPublisher<AQCurrentGroup, Error> 
    open func currentAirqualitycityIdcityIdGet(cityId: Int, key: String, callback: String? = nil) -> AnyPublisher<AQCurrentGroup, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/current/airquality?city_id&#x3D;{city_id}"
                path = path.replacingOccurrences(of: "{city_id}", with: "\(cityId)")
                let url = baseURL.appendingPathComponent(path)
                var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                var queryItems: [URLQueryItem] = []
                if let callback = callback { queryItems.append(URLQueryItem(name: "callback", value: callback)) } 
                queryItems.append(URLQueryItem(name: "key", value: key))
                components?.queryItems = queryItems
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                return request
            }.publisher
        }.flatMap { request -> AnyPublisher<AQCurrentGroup, Error> in 
            return self.transport.send(request: request)
                .tryMap { response in
                    try self.decoder.decode(AQCurrentGroup.self, from: response.data)
                }
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }


    /// Returns current air quality conditions - Given City and/or State, Country.
    /// - GET /current/airquality?city={city}&country={country}
    /// - Returns current air quality conditions.
    /// - parameter city: (path) City search.. Example - &amp;city&#x3D;Raleigh,NC or &amp;city&#x3D;Berlin,DE or city&#x3D;Paris&amp;country&#x3D;FR 
    /// - parameter country: (path) Country Code (2 letter). 
    /// - parameter key: (query) Your registered API key. 
    /// - parameter state: (query) Full name of state. (optional)
    /// - parameter callback: (query) Wraps return in jsonp callback. Example: callback&#x3D;func (optional)
    /// - returns: AnyPublisher<AQCurrentGroup, Error> 
    open func currentAirqualitycitycitycountrycountryGet(city: String, country: String, key: String, state: String? = nil, callback: String? = nil) -> AnyPublisher<AQCurrentGroup, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/current/airquality?city&#x3D;{city}&amp;country&#x3D;{country}"
                path = path.replacingOccurrences(of: "{city}", with: city)
                path = path.replacingOccurrences(of: "{country}", with: country)
                let url = baseURL.appendingPathComponent(path)
                var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                var queryItems: [URLQueryItem] = []
                if let state = state { queryItems.append(URLQueryItem(name: "state", value: state)) } 
                if let callback = callback { queryItems.append(URLQueryItem(name: "callback", value: callback)) } 
                queryItems.append(URLQueryItem(name: "key", value: key))
                components?.queryItems = queryItems
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                return request
            }.publisher
        }.flatMap { request -> AnyPublisher<AQCurrentGroup, Error> in 
            return self.transport.send(request: request)
                .tryMap { response in
                    try self.decoder.decode(AQCurrentGroup.self, from: response.data)
                }
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }


    /// Returns current air quality conditions - Given a lat/lon.
    /// - GET /current/airquality?lat={lat}&lon={lon}
    /// - Returns current air quality conditions.
    /// - parameter lat: (path) Latitude component of location. 
    /// - parameter lon: (path) Longitude component of location. 
    /// - parameter key: (query) Your registered API key. 
    /// - parameter callback: (query) Wraps return in jsonp callback. Example - callback&#x3D;func (optional)
    /// - returns: AnyPublisher<AQCurrentGroup, Error> 
    open func currentAirqualitylatlatlonlonGet(lat: Double, lon: Double, key: String, callback: String? = nil) -> AnyPublisher<AQCurrentGroup, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/current/airquality?lat&#x3D;{lat}&amp;lon&#x3D;{lon}"
                path = path.replacingOccurrences(of: "{lat}", with: "\(lat)")
                path = path.replacingOccurrences(of: "{lon}", with: "\(lon)")
                let url = baseURL.appendingPathComponent(path)
                var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                var queryItems: [URLQueryItem] = []
                if let callback = callback { queryItems.append(URLQueryItem(name: "callback", value: callback)) } 
                queryItems.append(URLQueryItem(name: "key", value: key))
                components?.queryItems = queryItems
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                return request
            }.publisher
        }.flatMap { request -> AnyPublisher<AQCurrentGroup, Error> in 
            return self.transport.send(request: request)
                .tryMap { response in
                    try self.decoder.decode(AQCurrentGroup.self, from: response.data)
                }
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }


    /// Returns current air quality conditions - Given a Postal Code.
    /// - GET /current/airquality?postal_code={postal_code}
    /// - Returns current air quality conditions.
    /// - parameter postalCode: (path) Postal Code. Example: 28546 
    /// - parameter key: (query) Your registered API key. 
    /// - parameter country: (query) Country Code (2 letter). (optional)
    /// - parameter callback: (query) Wraps return in jsonp callback. Example - callback&#x3D;func (optional)
    /// - returns: AnyPublisher<AQCurrentGroup, Error> 
    open func currentAirqualitypostalCodepostalCodeGet(postalCode: Int, key: String, country: String? = nil, callback: String? = nil) -> AnyPublisher<AQCurrentGroup, Error> {
        Deferred {
            Result<URLRequest, Error> {
                guard let baseURL = self.transport.baseURL ?? self.baseURL else {
                    throw OpenAPITransportError.badURLError()
                }
                var path = "/current/airquality?postal_code&#x3D;{postal_code}"
                path = path.replacingOccurrences(of: "{postal_code}", with: "\(postalCode)")
                let url = baseURL.appendingPathComponent(path)
                var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                var queryItems: [URLQueryItem] = []
                if let country = country { queryItems.append(URLQueryItem(name: "country", value: country)) } 
                if let callback = callback { queryItems.append(URLQueryItem(name: "callback", value: callback)) } 
                queryItems.append(URLQueryItem(name: "key", value: key))
                components?.queryItems = queryItems
                guard let requestURL = components?.url else {
                    throw OpenAPITransportError.badURLError()
                }
                var request = URLRequest(url: requestURL)
                request.httpMethod = "GET"
                return request
            }.publisher
        }.flatMap { request -> AnyPublisher<AQCurrentGroup, Error> in 
            return self.transport.send(request: request)
                .tryMap { response in
                    try self.decoder.decode(AQCurrentGroup.self, from: response.data)
                }
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}
