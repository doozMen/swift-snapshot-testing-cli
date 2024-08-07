// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let lib = "SnapshotTestingCli"

let package = Package(
  name: "swift-snapshot-testing-cli",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [.library(name: lib, targets: [lib]),],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.13.0")
  ],
  targets: [
    .target(
      name: lib,
      dependencies: [
        .product(name: "InlineSnapshotTesting", package: "swift-snapshot-testing"),
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ]),
    .testTarget(
      name: "\(lib)Tests",
      dependencies: [
        .target(name: lib)
      ])
  ]
)
