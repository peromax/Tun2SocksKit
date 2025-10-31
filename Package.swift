// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    ),
    .library(
        name: "Tun2SocksKitC",
        targets: ["Tun2SocksKitC"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["HevSocks5Tunnel", "Tun2SocksKitC"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
// <<<<<<< HEAD
//         url: "https://github.com/peromax/Tun2SocksKit/releases/download/5.0.0/HevSocks5Tunnel.xcframework.zip",
//         checksum: "441328cc6f97f1bf0e5ff9c7d34029146e23b69941c28e0a573c82952b8fdb46"
// =======
        url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.14.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "83e62cc8138f9ab3d6b8c5cf98b91c1db347f69351b28a555d4d77eb36bbade9"
    )
  ]
)
