// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CensoredString",
    products: [
        .library(
            name: "CensoredString",
            targets: ["CensoredString"]),
    ],
    targets: [
        .target(
            name: "CensoredString",
            dependencies: []),
        .testTarget(
            name: "CensoredStringTests",
            dependencies: ["CensoredString"]),
    ]
)
