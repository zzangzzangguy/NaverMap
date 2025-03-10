// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "NMap",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NMap",
            targets: ["NMap"]),
    ],
    targets: [
        .target(
            name: "NMap",
            dependencies: ["NMapsMap", "NMapsGeometry"]),
        .binaryTarget(
            name: "NMapsMap",
            path: "FrameWork/NMapsMap/framework/NMapsMap.xcframework"),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "FrameWork/NMapsGeometry/framework/NMapsGeometry.xcframework"),
        .testTarget(
            name: "NMapTests",
            dependencies: ["NMap"])
    ]
)
