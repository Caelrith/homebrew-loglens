# Formula/loglens.rb
class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.4.0" # <-- Updated version
  license "Proprietary" # Or your specific license

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.4.0/loglens-x86_64-macos.tar.gz" # <-- Updated URL
      sha256 "dd61c131427a026709414baff36f053c4f21ccb029f04563765ed0920ff0fa83" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.4.0/loglens-aarch64-macos.tar.gz" # <-- Updated URL
      sha256 "749e793d3228bd5fa1667f3ffa6b28e5c738d4fc1a56fa8a37c5f43ed036a5a4" # <-- Updated SHA256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.4.0/loglens-x86_64-linux.tar.gz" # <-- Updated URL
      sha256 "9de4fdf0c34420caeec4ac02553176fbc689cf4a98ba087098ed3a5cb1e63db2" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.4.0/loglens-aarch64-linux.tar.gz" # <-- Updated URL
      sha256 "9eb52ee46c7ab5ea4ca0982415da99fded1b7d7354f75e50847bdae6cb44eb66" # <-- Updated SHA256
    end
  end

  def install
    bin.install "loglens"
  end

  test do
    system "#{bin}/loglens", "--version"
  end
end