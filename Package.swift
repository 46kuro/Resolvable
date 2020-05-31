// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Injectable",
    platforms: [.macOS(.v10_10), .iOS(.v9)],
    products: [
        .executable(name: "di-resolver", targets: ["di-resolver"]),
        .library(name: "Injectable", targets: ["Injectable"]),
        .library(name: "Resolver", targets: ["Resolver"])
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.29.0"),
        .package(url: "https://github.com/kylef/Commander.git", from: "0.9.1")
    ],
    targets: [
        .target(name: "Injectable"),
        .target(name: "Resolver", dependencies: ["SourceKittenFramework"]),
        .target(name: "di-resolver", dependencies: ["Resolver", "Commander"]),
        .testTarget( name: "InjectableTests", dependencies: ["Injectable"]),
        .testTarget( name: "ResolverTests", dependencies: ["Resolver"]),
    ]
)
