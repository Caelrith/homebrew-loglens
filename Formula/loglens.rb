# Formula/loglens.rb
class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.4.2" # <-- Updated version
  license "Proprietary" # Or your specific license

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.4.2/loglens-x86_64-macos.tar.gz" # <-- Updated URL
      sha256 "3842b44165b87b53fb073c5ae79ed3e8a29bfc24a58f7d95a048663e0393ff0f" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.4.2/loglens-aarch64-macos.tar.gz" # <-- Updated URL
      sha256 "a1bcfeb6b02cb29e007a2279ac208cb82a4877a172514da481e60892a875ccc0" # <-- Updated SHA256
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.4.2/loglens-x86_64-linux.tar.gz" # <-- Updated URL
      sha256 "997b25af70529bed73f387f2c8a2990e829847b99ce72b0f3b3e62d2b6370d67" # <-- Updated SHA256
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.4.2/loglens-aarch64-linux.tar.gz" # <-- Updated URL
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