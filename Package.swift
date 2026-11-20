// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterAdMob",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterAdMob",
            targets: ["AdiscopeMediaMaxAdapterAdMobTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "a87749bbab4d54ae87d84bcf773b92faf067c20befd4ce2609e1bcd1f5d2a6de"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "7af0e2194d0c0f143a8a0c3c8685a9a19332bf323d7d8d094bc836ba51344bfe"
        ),
    ]
)
