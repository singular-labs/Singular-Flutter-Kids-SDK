// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "singular_flutter_kids_sdk",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "singular-flutter-kids-sdk", targets: ["singular_flutter_kids_sdk"])
    ],
    dependencies: [
        .package(url: "https://github.com/singular-labs/Singular-Kids-SDK.git", exact: "12.14.2")
    ],
    targets: [
        .target(
            name: "singular_flutter_kids_sdk",
            dependencies: [
                .product(name: "Singular", package: "Singular-Kids-SDK")
            ],
            cSettings: [
                .headerSearchPath("include/singular_flutter_kids_sdk")
            ],
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("StoreKit"),
                .linkedFramework("WebKit"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("z")
            ]
        )
    ]
)
