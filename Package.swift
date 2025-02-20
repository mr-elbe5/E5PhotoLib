// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "E5PhotoLib",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "E5PhotoLib",
            targets: ["E5PhotoLib"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mr-elbe5/E5Data",
            from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "E5PhotoLib", dependencies: ["E5Data"]),
    ]
)
