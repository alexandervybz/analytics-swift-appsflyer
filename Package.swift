// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentAppsFlyer",
    platforms: [
        .iOS("13.0"),
        .tvOS("11.0"),
        .watchOS("7.1")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VYBZSegmentAppsFlyer",
            targets: ["VYBZSegmentAppsFlyer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            name: "VYBZSegment",
            url: "https://github.com/alexandervybz/VYBZSegment",
            branch: "main"
        ),
        .package(
            name: "AppsFlyerLib-Dynamic",
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Dynamic",
            from: "6.14.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "VYBZSegmentAppsFlyer",
            dependencies: ["VYBZSegment", "AppsFlyerLib-Dynamic"]),
        
        // TESTS ARE HANDLED VIA THE EXAMPLE APP.
    ]
)

