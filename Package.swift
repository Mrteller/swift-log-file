// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-log-file",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "FileLogging",
            targets: ["FileLogging"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shaps80/Logging.git", from: "1.0.0"),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "FileLogging",
            dependencies: [
                "XCGLogger",
                .product(name: "Logging", package: "Logging")
            ]),
        .testTarget(
            name: "swift-log-fileTests",
            dependencies: [
                "FileLogging",
                "XCGLogger"
            ]),
    ]
)
