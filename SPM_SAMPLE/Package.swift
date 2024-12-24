// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM_SAMPLE",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SPM_SAMPLE",
            targets: ["SPM_SAMPLE"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Pushwoosh/Pushwoosh-XCFramework.git", exact: "6.7.11"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SPM_SAMPLE",
            dependencies: [
                .product(name: "PushwooshFramework", package: "Pushwoosh-XCFramework")
            ],
            path: "Sources"),
        .testTarget(
            name: "SPM_SAMPLETests",
            dependencies: ["SPM_SAMPLE"]
        ),
    ]
)
