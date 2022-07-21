# Generated with JReleaser 1.0.0-M2 at 2022-07-21T10:13:55.001752575Z
class KfkEmulator < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.1.1/kfk-emulator-0.1.1-linux-x86_64.zip"
    sha256 "b005fa851110b5785c6ecd0c508d42c10f42446660a58fb9d3838d3837f59052"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.1.1/kfk-emulator-0.1.1-osx-x86_64.zip"
    sha256 "9ba9abcb8ff8aee163a3bd4c52c215b48703d84839a17c6f8b252218f3fd0dd4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-emulator" => "kfk-emulator"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator --version")
    assert_match "0.1.1", output
  end
end
