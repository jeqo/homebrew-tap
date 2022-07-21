# Generated with JReleaser 1.0.0-M2 at 2022-07-21T10:33:02.953214171Z
class KfkEmulator < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.2.0/kfk-emulator-0.2.0-linux-x86_64.zip"
    sha256 "223a4b1adc3bff59cd25f9bed8d489fff0468771fbc1fbd0ba8301818a06a9d1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.2.0/kfk-emulator-0.2.0-osx-x86_64.zip"
    sha256 "027201ae64e322a21860bbce2510b90c103b4a58dbb8eb7597259ecc47a3e346"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-emulator" => "kfk-emulator"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator --version")
    assert_match "0.2.0", output
  end
end
