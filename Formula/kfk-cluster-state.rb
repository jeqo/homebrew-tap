# Generated with JReleaser 1.0.0-M2 at 2022-06-02T01:04:44.629395287Z
class KfkClusterState < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.3.0/kfk-cluster-state-0.3.0-linux-x86_64.zip"
    sha256 "921a2174d95d0483630f864cd6daf15cb869fc16f551cf364c409f934ff62bca"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.3.0/kfk-cluster-state-0.3.0-osx-x86_64.zip"
    sha256 "d6ab50dd278102ae8023458fd3f38a02eb0f17c071b7f04e7e458a18fc6e8d47"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-cluster-state" => "kfk-cluster-state"
  end

  test do
    output = shell_output("#{bin}/kfk-cluster-state --version")
    assert_match "0.3.0", output
  end
end
