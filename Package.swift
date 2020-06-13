// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resolvable",
    platforms: [.macOS(.v10_10), .iOS(.v9)],
    products: [
        .executable(name: "di-resolver", targets: ["di-resolver"]),
        .library(name: "Resolvable", targets: ["Resolvable"]),
        .library(name: "Resolver", targets: ["Resolver"])
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.29.0"),
        .package(url: "https://github.com/kylef/Commander.git", from: "0.9.1")
    ],
    targets: [
        .target(name: "Resolvable"),
        .target(name: "Resolver", dependencies: ["SourceKittenFramework"]),
        .target(name: "di-resolver", dependencies: ["Resolver", "Commander"]),
        .testTarget( name: "ResolvableTests", dependencies: ["Resolvable"]),
        .testTarget( name: "ResolverTests", dependencies: ["Resolver"]),
    ]
)
