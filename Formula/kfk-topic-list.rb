# Generated with JReleaser 1.0.0-M2 at 2022-03-21T19:41:58.51713632Z
class KfkTopicList < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.3/kfk-topic-list-0.1.3-linux-x86_64.zip"
    sha256 "bda8a9faa7adade73f0162c475c3c2150aaf8eae076a83aba657cd346f4d1a8e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.3/kfk-topic-list-0.1.3-osx-x86_64.zip"
    sha256 "dda049d84e0bcb8788098d8bd08603df8cb4c44893aa13c02b8fc7b868cb3c2c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-topic-list" => "kfk-topic-list"
  end

  test do
    output = shell_output("#{bin}/kfk-topic-list --version")
    assert_match "0.1.3", output
  end
end
