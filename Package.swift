// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "UserDefaultsWrapper",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "UserDefaultsWrapper",
            targets: ["UserDefaultsWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "UserDefaultsWrapper",
            dependencies: []
        ),
        .testTarget(
            name: "UserDefaultsWrapperTests",
            dependencies: ["UserDefaultsWrapper"]
        ),
        .executableTarget(
            name: "UserDefaultsWrapperExample",
            dependencies: ["UserDefaultsWrapper"]
        ),
    ]
)
