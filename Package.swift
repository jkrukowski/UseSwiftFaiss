// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "UseSwiftFaiss",
    platforms: [
        .macOS(.v14)
    ],
    dependencies: [
        .package(url: "https://github.com/jkrukowski/SwiftFaiss.git", from: "0.0.8")
    ],
    targets: [
        .executableTarget(
            name: "UseSwiftFaiss",
            dependencies: [
                .product(name: "SwiftFaiss", package: "SwiftFaiss")
            ]
        )
    ]
)
