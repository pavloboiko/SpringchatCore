// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpringchatCore",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SpringchatCore",
            targets: ["SpringchatCore"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-swift",
            branch: "master"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SpringchatCore",
            path: "./SpringchatCore.xcframework"
        )
    ]
)
