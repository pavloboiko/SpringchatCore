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
        .library(
            name: "SpringchatCore",
            targets: ["SpringchatCore"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/marmelroy/PhoneNumberKit",
            exact: "3.7.5"
        ),
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            .upToNextMajor(from: "5.9.1")
        ),
        .package(
            url: "https://github.com/mixpanel/mixpanel-swift",
            branch: "master"
        ),
        .package(
            url: "https://github.com/realm/realm-swift",
            branch: "master"
        ),
        .package(
            url: "https://github.com/RxSwiftCommunity/RxDataSources",
            .upToNextMajor(from: "5.0.2")
        ),
        .package(
            url: "https://github.com/RxSwiftCommunity/RxRealm",
            .upToNextMajor(from: "5.0.6")
        ),
        .package(
            url: "https://github.com/ReactiveX/RxSwift",
            .upToNextMajor(from: "6.6.0")
        ),
        .package(
            url: "https://github.com/Stefterv/filament_swift/",
            exact: "1.52.0"
        ),
        .package(
            url: "https://github.com/khanlou/Promise",
            .upToNextMajor(from: "2.0.4")
        ),
        .package(
            url: "https://github.com/swiftcsv/SwiftCSV",
            .upToNextMajor(from: "0.8.0")
        ),
        .package(
            url: "https://github.com/airbnb/lottie-ios",
            exact: "3.1.9"
        ),
        .package(
            url: "https://github.com/kean/Nuke",
            exact: "7.6.3"
        ),
        .package(
            url: "https://github.com/devxoul/Toaster",
            branch: "master"
        ),
        .package(
            url: "https://github.com/zekunyan/TTGTagCollectionView",
            branch: "master"
        ),
        .package(
            url: "https://github.com/Orderella/PopupDialog",
            branch: "master"
        ),
        .package(
            url: "https://github.com/SnapKit/SnapKit",
            .upToNextMajor(from: "5.0.1")
        ),
        .package(
            url: "https://github.com/youtube/youtube-ios-player-helper",
            .upToNextMajor(from: "1.0.4")
        ),
        .package(
            url: "https://github.com/alexiscreuzot/SwiftyGif",
            branch: "master"
        ),
        .package(
            url: "https://github.com/socketio/socket.io-client-swift",
            branch: "master"
        ),
        .package(
            url: "https://github.com/RevenueCat/purchases-ios",
            .upToNextMajor(from: "5.12.0")
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SpringchatCoreFramework",
            path: "./SpringchatCoreFramework.xcframework"
        ),
        .target(
            name: "SpringchatCore",
            dependencies: [
                .product(
                    name: "PhoneNumberKit",
                    package: "PhoneNumberKit"
                ),
                .product(
                    name: "Alamofire",
                    package: "Alamofire"
                ),
                .product(
                    name: "Promise",
                    package: "Promise"
                ),
                .product(
                    name: "RealmSwift",
                    package: "realm-swift"
                ),
                .product(
                    name: "SwiftCSV",
                    package: "SwiftCSV"
                ),
                .product(
                    name: "Mixpanel",
                    package: "mixpanel-swift"
                ),
                .product(
                    name: "RxSwift",
                    package: "RxSwift"
                ),
                .product(
                    name: "RxCocoa",
                    package: "RxSwift"
                ),
                .product(
                    name: "RxRealm",
                    package: "RxRealm"
                ),
                .product(
                    name: "RxDataSources",
                    package: "RxDataSources"
                ),
                .product(
                    name: "Lottie",
                    package: "lottie-ios"
                ),
                .product(
                    name: "filament",
                    package: "filament_swift"
                ),
                .product(
                    name: "Nuke",
                    package: "Nuke"
                ),
                .product(
                    name: "Toaster",
                    package: "Toaster"
                ),
                .product(
                    name: "TTGTags",
                    package: "TTGTagCollectionView"
                ),
                .product(
                    name: "PopupDialog",
                    package: "PopupDialog"
                ),
                .product(
                    name: "SnapKit",
                    package: "SnapKit"
                ),
                .product(
                    name: "YouTubeiOSPlayerHelper",
                    package: "youtube-ios-player-helper"
                ),
                .product(
                    name: "SwiftyGif",
                    package: "SwiftyGif"
                ),
                .product(
                    name: "SocketIO",
                    package: "socket.io-client-swift"
                ),
                .product(
                    name: "RevenueCat",
                    package: "purchases-ios"
                ),
                .target(name: "SpringchatCoreFramework"),
            ],
            path: "Sources/Dependencies"
        ),
    ]
)
