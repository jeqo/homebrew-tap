# Generated with JReleaser 1.0.0-M2 at 2022-03-29T17:55:20.542076909Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.8"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.8/kfk-ctx-0.2.8-linux-x86_64.zip"
    sha256 "80b343f0ee0fd79730f145b6f31754817537bdf22558b4cdb33594c9ede53683"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.8/kfk-ctx-0.2.8-osx-x86_64.zip"
    sha256 "3b059ff1907ef09aaf6b49ce389ebf4db44025b7c04c62c5f88b318501d4312a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.8", output
  end
end
