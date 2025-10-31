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
        url: "https://github.com/peromax/Tun2SocksKit/releases/download/5.15.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "d2c54e709b276b516885fe8dc6e2fa16cd9a02e3e7ff9f745f28ccfcd5d6e74d"
        // url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.14.0/HevSocks5Tunnel.xcframework.zip",
        // checksum: "83e62cc8138f9ab3d6b8c5cf98b91c1db347f69351b28a555d4d77eb36bbade9"
    )
  ]
)
