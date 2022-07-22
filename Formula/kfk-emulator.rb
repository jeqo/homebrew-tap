# Generated with JReleaser 1.0.0-M2 at 2022-07-22T00:39:48.906363056Z
class KfkEmulator < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.0/kfk-emulator-0.3.0-linux-x86_64.zip"
    sha256 "66fd94856e466c5cee6340091005823d52214a15cdd81f5a96742e992f4563a9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.0/kfk-emulator-0.3.0-osx-x86_64.zip"
    sha256 "00afe113e5d3360c0849d2299cec32a7536572bd37d2bbb68208e7a55484b280"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-emulator" => "kfk-emulator"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator --version")
    assert_match "0.3.0", output
  end
end
