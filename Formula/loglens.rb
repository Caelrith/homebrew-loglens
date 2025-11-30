class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.9.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.9.0/loglens-x86_64-macos.tar.gz"
      sha256 "278eb96347abc41317f1efe6ac7fe2b7defb6469f87699a6709d32edddb9814e"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.9.0/loglens-aarch64-macos.tar.gz"
      sha256 "87c2473c413b20eef3fed6308eb0533e42c1bf397f15e5e076e9b25e67875fcc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.9.0/loglens-x86_64-linux.tar.gz"
      sha256 "692f989a4bf2b53668f2be37a1bf313801a8f43d81b9bdb758ea3043081ec4bd"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.9.0/loglens-aarch64-linux.tar.gz"
      sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66"
    end
  end

  def install
    bin.install "loglens"
  end

  test do
    system "#{bin}/loglens", "--version"
  end
end