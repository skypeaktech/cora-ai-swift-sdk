// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://us-central1-maven.pkg.dev/kubernetes-411520/spt-maven/com/skypeaktech/cora/cora-sdk-kmmbridge/2.0.9/cora-sdk-kmmbridge-2.0.9.zip"
let remoteKotlinChecksum = "f16b5ff7b08b5db51cecf1b35fc42c8be121254a3bd2df4d5e4e39a427eb7898"
let packageName = "CoraSDK"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            type: .dynamic,
            targets: [packageName + "Wrapper"]
        ),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .exact("11.9.0"))
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
        .target(
            name: packageName + "Wrapper",
            dependencies: [
                .target(name: packageName),
                .product(name: "FirebaseAuth", package: "Firebase"),
                .product(name: "FirebaseCore", package: "Firebase"),
                .product(name: "FirebaseFirestore", package: "Firebase"),
                .product(name: "FirebaseFunctions", package: "Firebase"),
                .product(name: "FirebaseInstallations", package: "Firebase"),
                .product(name: "FirebaseRemoteConfig", package: "Firebase")
            ]
        )
    ]
)
