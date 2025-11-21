class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.7.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.7.0/loglens-x86_64-macos.tar.gz"
      sha256 "bfdbdd1caacbb0fa3974d2ea609ad3247aaa6f6793713631ff9aab1c7e029fc6"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.7.0/loglens-aarch64-macos.tar.gz"
      sha256 "4bf54fbe220be7d6c8e19668e02dee3acd6fcd7d60109c97d92f7ae56ceeef64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.7.0/loglens-x86_64-linux.tar.gz"
      sha256 "7839bc0b3e4d3d005f7d954c86ac446854410c038856d7943cfb0ba6ac6c61b8"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.7.0/loglens-aarch64-linux.tar.gz"
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