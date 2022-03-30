# Generated with JReleaser 1.0.0-M2 at 2022-03-30T19:03:23.075780642Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.0/kfk-producer-datagen-0.2.0-linux-x86_64.zip"
    sha256 "ca4f63eacd2775172bf2f1312dcee176fcc672ce8330de933d766d5000c90cb2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.0/kfk-producer-datagen-0.2.0-osx-x86_64.zip"
    sha256 "db8c35f3af2554a77fe589b617f92e06eab4ad7f24025a23201f5c1a3bda1c39"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.0", output
  end
end
