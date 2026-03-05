class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/MasiX"
  url "https://github.com/DioNanos/MasiX/releases/download/v0.3.7/masix-0.3.7.tar.gz"
  sha256 "c5937831d3e190f4787f00a7dfb2da2b2aa31343187242b44f4c1121bcc05ae6"
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
