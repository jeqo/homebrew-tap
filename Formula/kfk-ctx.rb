# Generated with JReleaser 1.0.0-M2 at 2022-03-24T19:56:16.906763042Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.5/kfk-ctx-0.2.5-linux-x86_64.zip"
    sha256 "0b39d88019e33f373a67097ede1b798f2324e7009ba19b36213eaa430e1b2d72"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.5/kfk-ctx-0.2.5-osx-x86_64.zip"
    sha256 "23ab0bc1ee883a92e78755dab91a43180a7b3943be4ac9161371956386991cca"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.5", output
  end
end
