# Generated with JReleaser 1.0.0-M2 at 2022-03-23T21:05:10.952902848Z
class KfkClusterState < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-cluster-state-v0.2.0/kfk-cluster-state-0.2.0-linux-x86_64.zip"
    sha256 "5e65518dcdf6d1ae3aa3be3933990c136070987e770b82bde5b7e31f1c63f241"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-cluster-state-v0.2.0/kfk-cluster-state-0.2.0-osx-x86_64.zip"
    sha256 "8c37efae28416d8b0571d76fae27486fca407b956c97f84a002153ab60e2832f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-cluster-state" => "kfk-cluster-state"
  end

  test do
    output = shell_output("#{bin}/kfk-cluster-state --version")
    assert_match "0.2.0", output
  end
end
