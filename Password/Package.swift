// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Password",
    products: [
        .library(name: "Password", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built for FrontBase 8.
        .package(url: "ssh+git://git.oops.se/var/OopsGit/Vapor/FluentFrontbase.git", from: "1.0.0"),
        
        // 🔵 Swift Database adaptor built for FrontBase 8.
        .package(url: "ssh+git://git.oops.se/var/OopsGit/Vapor/Frontbase.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Frontbase", "FluentFrontbase", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

