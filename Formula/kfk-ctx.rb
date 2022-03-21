class KfkCtx < Formula
  desc "kfk-ctx -- A CLI for Managing Apache Kafka clusters as contexts"
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.1.1/kfk-ctx-0.1.1-linux-x86_64.zip"
    sha256 "b9fdd9c2934ed652489b827d58246d8d54aea1aeb67e4f7054057644cb279850"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.1.1/kfk-ctx-0.1.1-osx-x86_64.zip"
    sha256 "5d367cbd7e0302a2971b07bfb1241f472f30beaa297a6fe078964772985ad823"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.1.0", output
  end
end
