cask "coremlcompiler-standalone" do
  version "3500.32.1"
  sha256 "1674a561e9fd808dd9c362efdbb225a91b30f40529796793a6b154894af474ae"

  url "https://github.com/xiaozhuai/coremlcompiler-standalone/releases/download/v#{version}/coremlcompiler-standalone.tar.gz"
  name "CoreMLCompiler Standalone"
  desc "Standalone Core ML model compiler extracted from the Xcode toolchain"
  homepage "https://github.com/xiaozhuai/coremlcompiler-standalone"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "libexec/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/coremlcompiler",
         target: "coremlcompiler-standalone"
end
