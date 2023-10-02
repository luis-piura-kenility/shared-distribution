// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageVersion = "0.0.18"

let package = Package(
    name: "shared",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "shared",
            targets: ["SharedTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "shared",
            url: "https://github.com/luis-piura-kenility/shared-distribution/releases/download/0.0.2/shared.xcframework.zip",
            checksum: "49ce5ad700c61aeb31b1f4c5e6d79980a2bbb4342a9dfcb4601e13cc79581962"
        ),
        .target(
            name: "SharedTargets",
            dependencies: [
                .target(name: "shared")
            ],
            path: "Sources"
        )
    ]
)
