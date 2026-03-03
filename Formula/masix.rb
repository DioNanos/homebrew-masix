class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/MasiX"
  url "https://github.com/DioNanos/MasiX/releases/download/v0.3.5/masix-0.3.5.tar.gz"
  sha256 "c585031517b1ddcfcc6763c8e2114d5981c39a4ce0a31c3b052694ee012a5344"
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
