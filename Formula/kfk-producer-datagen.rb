# Generated with JReleaser 1.0.0-M2 at 2022-03-31T21:57:12.906123756Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.2/kfk-producer-datagen-0.2.2-linux-x86_64.zip"
    sha256 "f512d0032284b62f2506c37a292a34503dce8bd641e37896bb0d9a67a2b29775"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.2/kfk-producer-datagen-0.2.2-osx-x86_64.zip"
    sha256 "4d6305f1b330ec784019e2b4cf2c8646468711af358f9309567c44798e070a41"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.2", output
  end
end
