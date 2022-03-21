# Generated with JReleaser 1.0.0-M2 at 2022-03-21T19:40:30.009355299Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.1.4/kfk-producer-datagen-0.1.4-linux-x86_64.zip"
    sha256 "c7deb215963a1277b36856315c3e6fb80402d88af0e08c71e43897a377226079"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.1.4/kfk-producer-datagen-0.1.4-osx-x86_64.zip"
    sha256 "2ffe4ee352e312ce78e2ccf5d918e14445affed4b9fdf5e33fb688f09298061e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.1.4", output
  end
end
