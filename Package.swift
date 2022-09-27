// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "SPMGoogleMaps",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMGoogleMaps",
            targets: ["SPMGoogleMaps"]),
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMaps"]),
        .library(
            name: "GoogleMapsBase",
            targets: ["GoogleMapsBase"]),
        .library(
            name: "GoogleMapsCore",
            targets: ["GoogleMapsCore"]),
        .library(
            name: "GoogleMapsM4B",
            targets: ["GoogleMapsM4B"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "GoogleMaps", path: "Sources/GoogleMaps.xcframework"),
        .binaryTarget(name: "GoogleMapsBase", path: "Sources/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "Sources/GoogleMapsCore.xcframework"),
        .binaryTarget(name: "GoogleMapsM4B", path: "Sources/GoogleMapsM4B.xcframework"),
        .target(
            name: "SPMGoogleMaps",
            dependencies: []),
        .testTarget(
            name: "SPMGoogleMapsTests",
            dependencies: ["SPMGoogleMaps"]),
    ]
)
