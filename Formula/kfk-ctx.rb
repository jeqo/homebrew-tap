# Generated with JReleaser 1.0.0-M2 at 2022-03-23T23:46:47.106778911Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.1/kfk-ctx-0.2.1-linux-x86_64.zip"
    sha256 "ca7a6cee01ef9777287de45437122704551e2f1ba34d8b4dc60ec67290fb291d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.1/kfk-ctx-0.2.1-osx-x86_64.zip"
    sha256 "ff2d5b223ae2d610fe2e87a103965fd6427f0d812230e9fc7377f9564c31e6e6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.1", output
  end
end
