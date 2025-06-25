// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://us-central1-maven.pkg.dev/kubernetes-411520/spt-maven/com/skypeaktech/cora/cora-sdk-kmmbridge/2.0.10/cora-sdk-kmmbridge-2.0.10.zip"
let remoteKotlinChecksum = "2680fa5f47584cc99b2c5b75ee086a93bfc375faef66e4daaead2ce658806099"
let packageName = "CoraSDK"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "CoraAISdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CoraAISdk",
            type: .dynamic,
            targets: ["CoraAISdk"]
        ),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", .exact("11.14.0"))
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
        .target(
            name: "CoraAISdk",
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
