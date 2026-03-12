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
        url: "https://github.com/peromax/Tun2SocksKit/releases/download/5.14.4/HevSocks5Tunnel.xcframework.zip",
        checksum: "d25808489799a576acd39a79be94fa1ae479fd1a6de67080a8567bbe19c29908"
    )
  ]
)
