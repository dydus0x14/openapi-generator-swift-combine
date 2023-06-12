// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Weather",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Weather",
            targets: ["Weather"]
        ),
    ],
    dependencies: [.package(path: "../OpenAPITransport")],
    targets: [
        .target(
            name: "Weather",
            dependencies: [.byName(name: "OpenAPITransport")],
            path: "Sources"
        ),
    ]
)
