# Generated with JReleaser 1.0.0-M2 at 2022-08-03T14:01:44.428147168Z
class KfkProducerDatagen < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.2.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.5/kfk-producer-datagen-0.2.5-linux-x86_64.zip"
    sha256 "65c6bde884dff51f64f6956357a34269bb028a0106afe4e202f74bb232f00ce2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.5/kfk-producer-datagen-0.2.5-osx-x86_64.zip"
    sha256 "48f5532eb4901e9bf42741a8ce0759e3c4284bb4e7f16815fe6cbaf2e331c5da"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-producer-datagen" => "kfk-producer-datagen"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen --version")
    assert_match "0.2.5", output
  end
end
