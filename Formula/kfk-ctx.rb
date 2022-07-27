# Generated with JReleaser 1.0.0-M2 at 2022-07-27T23:51:02.554780382Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.3.0/kfk-ctx-0.3.0-linux-x86_64.zip"
    sha256 "3ec903b1eeb42c1e43f02cabfa43e811d4278949cb6badf8dfc46f9a9afe7b27"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.3.0/kfk-ctx-0.3.0-osx-x86_64.zip"
    sha256 "1cc6198486131c0956eda5c2d61ec7c453b42650a52a379ea00924c757a60be3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.3.0", output
  end
end
