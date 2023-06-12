// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DigitalOcean",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "DigitalOcean",
            targets: ["DigitalOcean"]
        ),
    ],
    dependencies: [.package(path: "../OpenAPITransport")],
    targets: [
        .target(
            name: "DigitalOcean",
            dependencies: [.byName(name: "OpenAPITransport")],
            path: "Sources"
        ),
    ]
)
