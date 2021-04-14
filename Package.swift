// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KyomeUtils",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "KyomeUtils",
            targets: ["KyomeUtils"]),
    ],
    targets: [
        .target(
            name: "KyomeUtils",
            dependencies: []),
        .testTarget(
            name: "KyomeUtilsTests",
            dependencies: ["KyomeUtils"]),
    ]
)
