// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MKPlayer",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MKPlayer",
            targets: ["MKPlayer", "MKPlayerPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git",
            exact:"5.2.0"),
        .package(url: "https://github.com/mkplayer-ios/OMSDK_Mediakind.git", exact: "0.0.2"),
        .package(name: "BitmovinPlayer", url: "https://github.com/bitmovin/player-ios.git", from: "3.34.1"),
    ],
    
    targets: [
        .target(name: "MKPlayerPackage",
                dependencies: ["Alamofire", "MKPlayer", "OMSDK_Mediakind", "BitmovinPlayer"]
        ),
        .binaryTarget(name:"MKPlayer" , url: "https://mkplayer.blob.core.windows.net/$web/ios_tvos_rc_build/MKPlayer-1.0.0.99.zip", checksum: "8cb91f5ab71166f25617f3bd209c992a6b662a52b68c7de6f7caa632bae1f199")
    ]
)
