class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/MasiX"
  url "https://github.com/DioNanos/MasiX/releases/download/v0.3.8/masix-0.3.8.tar.gz"
  sha256 "aa61bee36c11a2a012065847de14cf584544f8f6e1756da8a17df04a829258a7"
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
