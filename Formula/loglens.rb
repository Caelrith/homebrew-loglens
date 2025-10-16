# Formula/loglens.rb
class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.3.0"
  license "MIT" # Or your specific license

  # This block handles different operating systems and CPU architectures.
  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.3.0/loglens-x86_64-macos.tar.gz"
      sha256 "1b21a004efee01b0d498de2a8a81c910215b489563d1a805a627f0c85322f24f"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.3.0/loglens-aarch64-macos.tar.gz"
      sha256 "b5ea9c4d67a5739e334327cd8bb235e3124810df1265204d5555e3db85efa883"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.3.0/loglens-x86_64-linux.tar.gz"
      sha256 "270a67f980bc5d6f46fbf1f3196e77527a8f9058454050ca2a93aacd90218302"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.3.0/loglens-aarch64-linux.tar.gz"
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