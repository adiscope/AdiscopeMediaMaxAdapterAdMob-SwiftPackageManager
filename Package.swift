// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterAdMob",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterAdMob",
            targets: ["AdiscopeMediaMaxAdapterAdMobTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterAdMobTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterAdMob"),
                .target(name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "d39c9a9c0e41c5991883c2f0f88f110bf045f12536b8b5dc81c6a2e035f1d77e"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "57c8504d1849a2737c46fb96c6103c3f2d5c145fe87c66368d63e473a58f9d93"
        ),
    ]
)
