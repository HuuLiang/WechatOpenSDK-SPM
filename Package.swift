// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WechatOpenSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WechatOpenSDK",
            targets: ["WechatOpenSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "WechatOpenSDKBinary",
            path: "Frameworks/WechatOpenSDK.xcframework"
        ),
        .target(
            name: "WechatOpenSDK",
            dependencies: [
                "WechatOpenSDKBinary"
            ],
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("WebKit")
            ]
        ),
        .testTarget(
            name: "WechatOpenSDKTests",
            dependencies: ["WechatOpenSDK"]
        ),
    ]
)
