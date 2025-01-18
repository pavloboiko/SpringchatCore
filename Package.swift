// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpringchatCoreSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SpringchatCoreSDK",
            targets: ["SpringchatCoreSDK"]
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
            name: "SpringchatCoreSDK",
            path: "./SpringchatCore.xcframework"
        ),
    ]
)
