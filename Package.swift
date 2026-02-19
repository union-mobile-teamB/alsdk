// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ALSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "ALSDK",
            targets: ["ALSDKWrapper"]
        )
    ],
    dependencies: [
//        .package(
//            url: "https://github.com/Alamofire/Alamofire",
//            Version(5,0,0)..<Version(5,10,2)
//        ),
//        .package(
//            url: "https://github.com/kean/Nuke.git",
//            Version(12,7,0)..<Version(12,8,0)
//        )
    ],
    targets: [
        .binaryTarget(
            name: "ALSDK",
            path: "Sources/ALSDK/ALSDK.xcframework"
        ),
        .target(
            name: "ALSDKWrapper",
            dependencies: [
                .target(name: "ALSDK"),
//                .product(name: "Alamofire", package: "Alamofire"),
//                .product(name: "NukeUI", package: "Nuke")
            ]
        )
    ]
)
