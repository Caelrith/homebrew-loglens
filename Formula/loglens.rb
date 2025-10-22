# Formula/loglens.rb
class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.5.0" # <-- Updated version
  license "Proprietary" # Or your specific license

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.5.0/loglens-x86_64-macos.tar.gz" # <-- Updated URL
      sha256 "c544f7910391ef9be048ecd01de7d4d5ff4b4474a55ee7d42e34221ecf52247a" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.5.0/loglens-aarch64-macos.tar.gz" # <-- Updated URL
      sha256 "7adb2bc3e0171bd58a36e5c1874631a70e0ec9c956ae48b35f9ba0fddc98657b" # <-- Updated SHA256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.5.0/loglens-x86_64-linux.tar.gz" # <-- Updated URL
      sha256 "a5384b9e83f608a0c760bf0a3a248e11dcb19d3d9dff0d078ed9151b4d274b10" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.5.0/loglens-aarch64-linux.tar.gz" # <-- Updated URL
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