// swift-tools-version: 5.10
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
    targets: [
        .binaryTarget(
            name: "SpringchatCore",
            path: "./SpringchatCore.xcframework"
        ),
    ]
)
