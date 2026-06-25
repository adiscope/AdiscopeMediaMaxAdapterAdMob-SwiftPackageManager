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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.2.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "42ba2e1825242b4b32141c8e2a1004f5f5906055924d7d357fa07021dbeef854"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "d3ccbcecc0fb7f7e4a82737979801e1b913742f1f2fc3c6c73c7f3e2ace1a7d4"
        ),
    ]
)
