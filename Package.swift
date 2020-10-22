// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ComposableUserNotifications",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
      .tvOS(.v13),
      .watchOS(.v6),
    ],
    products: [
        .library(
            name: "ComposableUserNotifications",
            targets: ["ComposableUserNotifications"]),
    ],
    dependencies: [
      .package(
        name: "swift-composable-architecture",
        url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "ComposableUserNotifications",
            dependencies: []),
        .testTarget(
            name: "ComposableUserNotificationsTests",
            dependencies: ["ComposableUserNotifications"]),
    ]
)
