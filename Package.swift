// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KyomeUtils",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "KyomeUtils",
            targets: ["KyomeUtils"]
        )
    ],
    targets: [
        .target(
            name: "KyomeUtils",
            dependencies: []
        )
    ]
)
