// swift-tools-version:5.6
// Generated automatically by Perfect Assistant Application
// Date: 2018-02-23 18:59:18 +0000
let latestVersion: Range<Version> = "1.0.0"..<"10.0.0"
import PackageDescription
let package = Package(
	name: "PostgresStORM",
    platforms: [
        .macOS(.v10_15)
    ],
	products: [
		.library(name: "PostgresStORM", targets: ["PostgresStORM"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-PostgreSQL.git", latestVersion),
        .package(url: "https://github.com/zhtut/StORM.git", latestVersion),
	],
	targets: [
		.target(name: "PostgresStORM", dependencies: [
            .product(name: "PerfectPostgreSQL", package: "Perfect-PostgreSQL"),
            "StORM"])
	]
)
