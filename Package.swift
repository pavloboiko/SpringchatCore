// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "SpringchatCoreSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SpringchatCoreSDK",
            targets: ["SpringchatCoreWrapper"]
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
        ),
        .target(
            name: "SpringchatCoreWrapper",
            dependencies: [
                "SpringchatCore",
                .product(name: "RealmSwift", package: "realm-swift"),
            ],
            path: "./SpringchatCoreWrapper", // Custom path for your wrapper's source files
            linkerSettings: [
                .linkedFramework("Realm"),
                .linkedFramework("RealmSwift"),
            ]
        )
    ]
)
