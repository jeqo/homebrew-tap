# Generated with JReleaser 1.0.0-M2 at 2022-09-26T11:16:17.362423468Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.3.0/kfk-producer-datagen-0.3.0-linux-x86_64.zip"
    sha256 "807dc8cbf6f53e03574437a984750158830fb7f3b773e55fad377026393c0d21"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.3.0/kfk-producer-datagen-0.3.0-osx-x86_64.zip"
    sha256 "c60680482376f9cf96b49b5d9f7f039587c6e33825e27436bb389486d49e34f6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.3.0", output
  end
end
