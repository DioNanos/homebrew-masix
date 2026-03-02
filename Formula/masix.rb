class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/MasiX"
  url "https://github.com/DioNanos/MasiX/releases/download/v0.3.2/masix-0.3.2.tar.gz"
  sha256 "c69f2520aaf18ecee476e16d5a8a8fcd2fd4f7bc44e1782dab479705bd6b0d83"
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
