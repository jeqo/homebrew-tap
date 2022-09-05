# Generated with JReleaser 1.0.0-M2 at 2022-09-05T14:22:34.087827928Z
class KfkEmulator < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.2/kfk-emulator-0.3.2-linux-x86_64.zip"
    sha256 "0d9618cb9aaf1162e76c561593f0695d375e8b6fc8042193a22dcd8a8ba1df42"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.2/kfk-emulator-0.3.2-osx-x86_64.zip"
    sha256 "dfde440fd23774b2259da6f38ed91b4cd46edc6ff838d5f8b50b13a5dbf3d6de"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-emulator" => "kfk-emulator"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator --version")
    assert_match "0.3.2", output
  end
end
