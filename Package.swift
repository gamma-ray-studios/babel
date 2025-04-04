// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "SwiftGame",
	platforms: [.macOS(.v13)],

	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "SwiftGame",
			type: .dynamic,
			targets: ["SwiftGame"]),
	],

	dependencies: [
		.package(url: "https://github.com/migueldeicaza/SwiftGodot", branch: "main")
	],

	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "SwiftGame",
			dependencies: [
				"SwiftGodot",
			],
			path: "src",
			swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
		),
		.testTarget(
			name: "SwiftTests",
			dependencies: ["SwiftGame"],
			path: "tests"
		),
	]
)
