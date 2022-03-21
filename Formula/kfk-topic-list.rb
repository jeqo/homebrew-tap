# Generated with JReleaser 1.0.0-M2 at 2022-03-21T19:58:03.187097813Z
class KfkTopicList < Formula
  desc "Kafka: CLI: Topic List: Expand Kafka topic listing with Offsets and more."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.4/kfk-topic-list-0.1.4-linux-x86_64.zip"
    sha256 "bdfce3042cff35a3be5f89a0dad523c4a9cd5fbdba8396247e2ad30fc99f2462"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.4/kfk-topic-list-0.1.4-osx-x86_64.zip"
    sha256 "03049146434f2c26635b38403647043faf93a15322812efeb2e585e1ebda1638"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-topic-list" => "kfk-topic-list"
  end

  test do
    output = shell_output("#{bin}/kfk-topic-list --version")
    assert_match "0.1.4", output
  end
end
