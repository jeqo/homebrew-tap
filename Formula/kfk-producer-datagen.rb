# Generated with JReleaser 1.0.0-M2 at 2022-03-30T19:15:26.450064874Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.1/kfk-producer-datagen-0.2.1-linux-x86_64.zip"
    sha256 "1decd62e42e3ddb480a27379f8cddf0a24c4dd9df845045ac795ff15aec82ed6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-producer-datagen-v0.2.1/kfk-producer-datagen-0.2.1-osx-x86_64.zip"
    sha256 "6f84a18215db352feaf9a7fe42b26348d07073d34c0d679b86360dc73094a2b5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.1", output
  end
end
