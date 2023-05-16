// swift-tools-version: 5.8
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
            targets: ["MKPlayer"]),
    ],
    dependencies: [
    ],
    
    targets: [
        .binaryTarget(name:"MKPlayer" , url: "https://mkplayer.blob.core.windows.net/$web/ios_tvos_rc_build/MKPlayer-1.0.0.99.zip", checksum: "8cb91f5ab71166f25617f3bd209c992a6b662a52b68c7de6f7caa632bae1f199")
    ]
)
