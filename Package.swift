// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://us-central1-maven.pkg.dev/kubernetes-411520/spt-maven/CORA/cora-sdk-kmmbridge/2.0.6/cora-sdk-kmmbridge-2.0.6.zip"
let remoteKotlinChecksum = "2a7696577dafa0c40c3ab4bf83b179d4ee24dfa4c0959b88262e0d09c7416ddc"
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
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)