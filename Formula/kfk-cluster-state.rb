# Generated with JReleaser 1.0.0-M2 at 2022-11-02T12:24:38.24090511Z
class KfkClusterState < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.3.1/kfk-cluster-state-0.3.1-linux-x86_64.zip"
    sha256 "76ad52d1d353e17501b2647007d28d02fd333d83d0636c16dda4c380e3b159da"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.3.1/kfk-cluster-state-0.3.1-osx-x86_64.zip"
    sha256 "5ce94420d20b5759cb2398098cad018215504872368c87577a32ad4fbbe4cad9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-cluster-state" => "kfk-cluster-state"
  end

  test do
    output = shell_output("#{bin}/kfk-cluster-state --version")
    assert_match "0.3.1", output
  end
end
