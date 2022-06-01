# Generated with JReleaser 1.0.0-M2 at 2022-06-01T01:22:36.290408663Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.3/kfk-producer-datagen-0.2.3-linux-x86_64.zip"
    sha256 "7c35ef974f7a372fa24595534f8d9207e345bba5a97a03a02d391c13c9fb84e4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.3/kfk-producer-datagen-0.2.3-osx-x86_64.zip"
    sha256 "6dfc4bfd7af6d043d9e784dbe87af77f2ffc9c3dcbe48c1ee52d85c154bb38f9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.3", output
  end
end
