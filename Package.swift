// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-StatusPackage-SPM",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SDK-StatusPackage-SPM",
            targets: ["SDK-StatusPackage-SPM", "statusComponent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.7.0")),
        .package(url: "git@github.com:airbnb/lottie-spm", .upToNextMinor(from: "4.4.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SDK-StatusPackage-SPM",
            dependencies: [
                "SDK-CorePackage-SPM",
                .product(
                    name: "Lottie",
                    package: "lottie-spm"),
            ]),
        .binaryTarget(name: "statusComponent",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKStatusComponent/2.7.0/statusComponent.zip",
        checksum: "9b85342b08cd7159928a7ac475f24abac36f68dbd8b26f27f528fc75a824c117"),
    ]
)
