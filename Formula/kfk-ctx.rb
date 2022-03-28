# Generated with JReleaser 1.0.0-M2 at 2022-03-28T00:23:45.020937627Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.7/kfk-ctx-0.2.7-linux-x86_64.zip"
    sha256 "ff2d3161a37b401edb445fe507ec58bd0d55a7859f777f9de14bdd23a5ea5508"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.7/kfk-ctx-0.2.7-osx-x86_64.zip"
    sha256 "33b0e1e7ac0b7b065cb7ddbdec45224c7aaf80e8407eec638da2811e480f33dc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.7", output
  end
end
