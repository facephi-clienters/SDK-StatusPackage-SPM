// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-StatusPackage-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SDK-StatusPackage-SPM",
            targets: ["SDK-StatusPackage-SPM", "statusComponent"]),
    ],
    dependencies: [
           // Dependencies declare other packages that this package depends on.
           // .package(url: /* package url */, from: "1.0.0"),
           .package(url: "git@github.com:facephi-clienters/SDK-CorePackage-SPM.git", from: "1.5.0"),
       ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SDK-StatusPackage-SPM",
            dependencies: [
                .product(name: "core", package: "SDK-CorePackage-SPM")
                    ]),
        .binaryTarget(name: "statusComponent", path: "statusComponent.xcframework"),

        
            

    ]
)
