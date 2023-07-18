// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Clibqrencode",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "Clibqrencode",
			targets: ["Clibqrencode"]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "Clibqrencode",
			path: "./Sources/Clibqrencode",
			sources:["."],
			publicHeadersPath:".",
			cSettings:[
				// libqrencode uses this to separate 'test' from 'nontest' configurations. in this case, we are 'nontest'
				.define("STATIC_IN_RELEASE=static"),

				// version stuff
				.define("MAJOR_VERSION=4"),
				.define("MINOR_VERSION=1"),
				.define("MICRO_VERSION=1"),
				.define("VERSION=\"4.1.1\""),
			]
		)
	]
)
