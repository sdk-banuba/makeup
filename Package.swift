// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "makeup",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "makeup",
            targets: [
                "makeup",
                "makeup_sdk_core",
                "makeup_effect_player",
                "makeup_scripting",
                "makeup_face_tracker",
                "makeup_skin",
                "makeup_lips"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/skin.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/lips.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "makeup",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/makeup.zip",
            checksum: "73b459b51080c1fbf44c8a1c2985bdff27ea63bb1bf175148dce6e1adb93adcf"
        ),
        .target(
            name: "makeup_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "makeup_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "makeup_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
        .target(
            name: "makeup_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
        .target(
            name: "makeup_skin",
            dependencies: [
                .product(
                    name: "skin",
                    package: "skin"
                ),
            ]
        ),
        .target(
            name: "makeup_lips",
            dependencies: [
                .product(
                    name: "lips",
                    package: "lips"
                ),
            ]
        ),
    ]
)
