# frozen_string_literal: true

class SwiftFormatAT53 < Formula
  desc "`Code formatter, based on SourceKit-LSP"
  homepage "https://github.com/apple/swift-format"
  url "https://github.com/apple/swift-format.git", branch: "swift-5.3-branch"
  version "5.3"

  depends_on xcode: ["12.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--build-path", "'.build'"
    bin.install ".build/release/swift-format"
  end

  test do
    system "#{bin}/swift-format", "--version"
  end
end
