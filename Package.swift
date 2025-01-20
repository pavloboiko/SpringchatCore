// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "SpringchatCoreSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SpringchatCoreFramework",
            targets: ["SpringchatCoreFramework"]
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
            name: "SpringchatCoreFramework",
            path: "./SpringchatCoreFramework.xcframework"
        )
    ]
)
