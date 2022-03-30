# Generated with JReleaser 1.0.0-M2 at 2022-03-30T18:53:56.947479702Z
class KfkClusterState < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-cluster-state-v0.2.1/kfk-cluster-state-0.2.1-linux-x86_64.zip"
    sha256 "d1f498eea23e77e901ff0a44b618379f563b396362c38f6c7e1c3c376f0bb1b2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-cluster-state-v0.2.1/kfk-cluster-state-0.2.1-osx-x86_64.zip"
    sha256 "fca82839f24f06f59fdd9f73f12b0dc96e673692d9012d0f27a89abe934e179b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-cluster-state" => "kfk-cluster-state"
  end

  test do
    output = shell_output("#{bin}/kfk-cluster-state --version")
    assert_match "0.2.1", output
  end
end
