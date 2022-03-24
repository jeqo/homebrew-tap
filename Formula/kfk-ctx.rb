# Generated with JReleaser 1.0.0-M2 at 2022-03-24T14:41:54.70257752Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.4/kfk-ctx-0.2.4-linux-x86_64.zip"
    sha256 "7147ec01e1f52403d2d5d7e2396ab870bbf0328f8426d26059a83e5435cf768a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.4/kfk-ctx-0.2.4-osx-x86_64.zip"
    sha256 "b16fa4a36c9e0c6710686cf7cfd52f3f4dcd2209183a5015d7059475f029688d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.4", output
  end
end
