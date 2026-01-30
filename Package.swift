// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-metal-graphics",
    products: [
        .library(
            name: "MetalGraphics",
            targets: ["MetalGraphics"]
        ),
    ],
    targets: [
        .target(
            name: "Core",
            publicHeadersPath: "Public"
        ),
        .target(
            name: "FilterBuiltins",
            dependencies: ["Core"],
            publicHeadersPath: "Public"
        ),
        .target(
            name: "MetalGraphics",
            dependencies: [
                "Core",
                "FilterBuiltins"
            ]
        ),
        .testTarget(
            name: "MetalGraphicsTests",
            dependencies: ["MetalGraphics"]
        ),
    ]
)
