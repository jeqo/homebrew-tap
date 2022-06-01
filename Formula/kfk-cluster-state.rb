# Generated with JReleaser 1.0.0-M2 at 2022-06-01T01:35:32.033390797Z
class KfkClusterState < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.2.3/kfk-cluster-state-0.2.3-linux-x86_64.zip"
    sha256 "4387c9dcffb772039987e79923bc39895622d59b327812c65c4f8e5a53e4497e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-cluster-state-v0.2.3/kfk-cluster-state-0.2.3-osx-x86_64.zip"
    sha256 "87e351aa8efebdd2953a99c82105929b4f753197af209a999983b9113fb213af"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-cluster-state" => "kfk-cluster-state"
  end

  test do
    output = shell_output("#{bin}/kfk-cluster-state --version")
    assert_match "0.2.3", output
  end
end
