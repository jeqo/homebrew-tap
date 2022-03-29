# Generated with JReleaser 1.0.0-M2 at 2022-03-29T18:24:22.32004542Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.10"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.10/kfk-ctx-0.2.10-linux-x86_64.zip"
    sha256 "a5547e7a72da47b2204f01fcc51b5717743657a0c779fa5b628d781aa2f4c9b2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.10/kfk-ctx-0.2.10-osx-x86_64.zip"
    sha256 "b1a039cb25aaf1a9457f6ea7bbb37b744b0db95a9913ff9c39a307bf3e45739b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.10", output
  end
end
