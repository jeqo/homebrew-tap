# Generated with JReleaser 1.0.0-M2 at 2022-06-01T01:44:37.186835356Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.11"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.2.11/kfk-ctx-0.2.11-linux-x86_64.zip"
    sha256 "7ef89fc095d1df0179dacad3659487d65abc2db86cffa181ebc6ac2e86094c78"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.2.11/kfk-ctx-0.2.11-osx-x86_64.zip"
    sha256 "e87cc23e9036a0c054b35bce226dc6b14b3b54ebcd6b69a05dbdd910b027300b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.11", output
  end
end
