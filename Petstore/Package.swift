// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Petstore",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Petstore",
            targets: ["Petstore"]
        ),
    ],
    dependencies: [.package(path: "../OpenAPITransport")],
    targets: [
        .target(
            name: "Petstore",
            dependencies: [.byName(name: "OpenAPITransport")],
            path: "Sources"
        ),
    ]
)
