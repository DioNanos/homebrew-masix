class Masix < Formula
  desc "Rust-first messaging automation runtime (Telegram/MCP/Cron)"
  homepage "https://github.com/DioNanos/MasiX"
  url "https://github.com/DioNanos/MasiX/releases/download/v0.3.3/masix-0.3.3.tar.gz"
  sha256 "b0a8a5c23a92f52c32884d494df43f6371f7bace4ed068e9b6e48c5cc06c01fc"
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
