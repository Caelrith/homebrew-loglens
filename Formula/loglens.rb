class Loglens < Formula
  desc "A blazingly fast, structured log query tool"
  homepage "https://getloglens.com"
  version "1.8.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.8.0/loglens-x86_64-macos.tar.gz"
      sha256 "888061b0ec4a58fd80bc288f565cc549ce9a2234d50d74ea266e725b9cc638d0"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.8.0/loglens-aarch64-macos.tar.gz"
      sha256 "2eb3102dda9dae4f2dec10d1f579591feaf837b6585c76da7648f59fc2d747e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://download.getloglens.com/v1.8.0/loglens-x86_64-linux.tar.gz"
      sha256 "e3c4361143f46cd5d6a72bfc8034a0309b5bbf3bb423d6f5ebfe4f03cf6d6a0f"
    elsif Hardware::CPU.arm?
      url "https://download.getloglens.com/v1.8.0/loglens-aarch64-linux.tar.gz"
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