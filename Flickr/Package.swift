// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Flickr",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Flickr",
            targets: ["Flickr"]
        ),
    ],
    dependencies: [.package(path: "../OpenAPITransport")],
    targets: [
        .target(
            name: "Flickr",
            dependencies: [.byName(name: "OpenAPITransport")],
            path: "Sources"
        ),
    ]
)
