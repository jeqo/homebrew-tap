class KfkTopicList < Formula
  desc "kfk-topic-list -- A CLI for getting Kafka topics metadata, replica placement, offsets, at once."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.2/kfk-topic-list-0.1.2-linux-x86_64.zip"
    sha256 "896159d878ab6c6871f84fa106c1741ad0bca2240f3b02110c700e239bc7ba1c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-topic-list-v0.1.2/kfk-topic-list-0.1.2-osx-x86_64.zip"
    sha256 "f2a805134e53bcef630111661b2956313345f3c57b6bb5de3652499c37d7562d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-topic-list"
  end

  test do
    output = shell_output("#{bin}/kfk-topic-list --version")
    assert_match "0.1.0", output
  end
end
