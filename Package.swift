// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Lightbox",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "Lightbox",
            targets: ["Lightbox"]),
    ],
    dependencies: [
      .package(url: "https://github.com/SDWebImage/SDWebImage", .branch("master"))
    ],
    targets: [
        .target(
            name: "Lightbox",
            dependencies: ["SDWebImage"],
            path: "Source"
            )
    ],
    swiftLanguageVersions: [.v5]
)
