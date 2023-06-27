# openapi-generator-swift-combine

Examples of swift-combine client generator in openapi-generator https://github.com/OpenAPITools/openapi-generator

Basic usage for petstore.yml

```swift
import PetstoreOpenAPI
import OpenAPITransport

let api = PetAPI(URLSessionOpenAPITransport())
let cancellable = api
    .getPetById(petId: 1)
    .sink { completion in
        switch completion {
        case .finished:
            print("finished")
        case let .failure(error):
            print("finished with error: \(error)")
        }
    } receiveValue: { pet in
        print("found pet \(pet)")
    }
```

For tests and mocks

```swift
import PetstoreOpenAPI
import OpenAPITransport

class MockTransport: OpenAPITransport {
    var baseURL: URL? { nil }

    func send(request: URLRequest) -> AnyPublisher<OpenAPITransportResponse, OpenAPITransportError> {
        // Return anything needed instead of real network request      
        Just(OpenAPITransportResponse(data: Data(), statusCode: 200))
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func cancelAll() {
    }
}

let api = PetAPI(MockTransport())
```

Add logger and authorize requests

```swift
import PetstoreOpenAPI
import OpenAPITransport

class AuthInterceptor: Interceptor {
    var token = ""

    /// Customize request before performing. Add headers or encrypt body for example.
    func intercept(request: URLRequest) -> AnyPublisher<URLRequest, OpenAPITransportError> {
        var updatedRequest = request
        updatedRequest.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        return Just(updatedRequest).setFailureType(to: OpenAPITransportError.self).eraseToAnyPublisher()
    }

    /// Customize response before handling. Decrypt body for example.
    func intercept(output: URLSession.DataTaskPublisher.Output) -> AnyPublisher<URLSession.DataTaskPublisher.Output, OpenAPITransportError> {
    }
}

class Logger: OpenAPITransportDelegate {
    func willStart(request: URLRequest) {
        print("will start")
    }

    func didFinish(request: URLRequest, response: HTTPURLResponse?, data: Data) {
        print("did finish")
    }

    func didFinish(request: URLRequest, error: Error) {
        print("did finish with error ")
    }
}

let config = URLSessionOpenAPITransport.Config(
    processor: AuthInterceptor(),
    delegate: Logger()
)
let transport = URLSessionOpenAPITransport(config: config)

let api = PetAPI(transport)
```
