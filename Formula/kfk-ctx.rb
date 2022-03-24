# Generated with JReleaser 1.0.0-M2 at 2022-03-24T01:09:48.422049164Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.2/kfk-ctx-0.2.2-linux-x86_64.zip"
    sha256 "4e16b56a538ad2b1823e0cab7e77375d7cf279e3c43c43c9d75650728f013775"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.2/kfk-ctx-0.2.2-osx-x86_64.zip"
    sha256 "e2c6090f1a22e49155276585fef071134266365b00b30b0e1cae4f9d68e08361"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.2", output
  end
end
