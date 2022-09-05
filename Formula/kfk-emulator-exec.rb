# Generated with JReleaser 1.0.0-M2 at 2022-09-05T14:22:34.087827928Z
class KfkEmulatorExec < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.2/kfk-emulator-exec.jar", :using => :nounzip
  version "0.3.2"
  sha256 "bd111a845683f97992ab795c5e501977f41ec88971929f2c90232fb9255292ce"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "kfk-emulator-exec.jar"
    bin.write_jar_script libexec/"kfk-emulator-exec.jar", "kfk-emulator-exec"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator-exec --version")
    assert_match "0.3.2", output
  end
end
