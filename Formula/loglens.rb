class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.6.0" # <-- Updated to 1.6.0
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.6.0/loglens-x86_64-macos.tar.gz"
      sha256 "2f22f465a006d5379fd3a174a548cf31fe3519683196d027915face441f5596b"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.6.0/loglens-aarch64-macos.tar.gz"
      sha256 "74d881a089dce7f26d95b285307164d9fd3c23347944447474507acdb7a95b19"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.6.0/loglens-x86_64-linux.tar.gz"
      sha256 "4a47acbad7352def6aa3f88b77231a798584ba1c94c14f546941da40b085aa5d"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.6.0/loglens-aarch64-linux.tar.gz"
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