# Generated with JReleaser 1.0.0-M2 at 2022-03-21T19:23:18.233053178Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.1.2/kfk-ctx-0.1.2-linux-x86_64.zip"
    sha256 "1b8b71df476c28acc65c0fd667c66a1e5961e4b88e16d037b303733d48c03279"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.1.2/kfk-ctx-0.1.2-osx-x86_64.zip"
    sha256 "8a79e64c2757765cb846001fc2ceb88b255fe7449881f34d1399da6f5b7e0171"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.1.2", output
  end
end
