# Generated with JReleaser 1.0.0-M2 at 2022-03-24T13:47:24.508038456Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.3/kfk-ctx-0.2.3-linux-x86_64.zip"
    sha256 "7e990093bde7301e0b4c65b597a5ca5e74113cfbd4c389c711d0215c2e0d531e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.3/kfk-ctx-0.2.3-osx-x86_64.zip"
    sha256 "556dc7112722a42dd7bc9239e1cf5e9f9fb37346a2f13edc7ff6503c8ea4f1c2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.3", output
  end
end
