# Generated with JReleaser 1.0.0-M2 at 2022-08-03T14:20:42.193605625Z
class KfkEmulator < Formula
  desc "Kafka CLI: Emulator"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.1/kfk-emulator-0.3.1-linux-x86_64.zip"
    sha256 "fd2ceb58b7adba2bb8318d5cb2e87f21822b07e382a9fff2bb80b02a01c54bb6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-emulator-v0.3.1/kfk-emulator-0.3.1-osx-x86_64.zip"
    sha256 "b8ba349a04f8c4beabaab459a5262fe36ae68f02ca775349363773697ace4e6d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-emulator" => "kfk-emulator"
  end

  test do
    output = shell_output("#{bin}/kfk-emulator --version")
    assert_match "0.3.1", output
  end
end
