# Generated with JReleaser 1.0.0-M2 at 2022-09-05T13:01:28.166185664Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.6/kfk-producer-datagen-0.2.6-linux-x86_64.zip"
    sha256 "17c74a2aa00fa361c8e276edc789162176d0b716c3448b429b15289cbbc54e17"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.6/kfk-producer-datagen-0.2.6-osx-x86_64.zip"
    sha256 "bf29fe39ebc23172c529552e94394fdb9aa15ea0069913902d5efb7f4990a2d4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.6", output
  end
end
