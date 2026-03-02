class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/masix"
  url "https://github.com/DioNanos/masix/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "PLACEHOLDER_SHA256_UPDATE_ON_RELEASE"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/masix-cli")
  end

  test do
    assert_match "masix", shell_output("#{bin}/masix --help")
  end
end
