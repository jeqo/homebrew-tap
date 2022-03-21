class KfkProducerDatagen < Formula
  desc "kfk-producer-datagen -- A CLI for Producing generated messages into Kafka topics, including options to produce single messages, with interval, and as performance test."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.1.2/kfk-producer-datagen-0.1.2-linux-x86_64.zip"
    sha256 "ac00c7a6c412a3a9ccc9542fa8a0bd19312133fe8123c5d8be23821beb540883"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.1.2/kfk-producer-datagen-0.1.2-osx-x86_64.zip"
    sha256 "943526e31c3db2a46bb6dcb426f2ec42ef848bf5591229fe968d20a4fb94f182"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.1.0", output
  end
end
