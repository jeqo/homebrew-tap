# Generated with JReleaser 1.0.0-M2 at 2022-03-23T21:20:51.603438836Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.0/kfk-ctx-0.2.0-linux-x86_64.zip"
    sha256 "bb8e0f6c866348b2be0153f7826f284465289c6a95f1c893c654b0cc8f7e1251"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.0/kfk-ctx-0.2.0-osx-x86_64.zip"
    sha256 "aa72acedd6f20596efafca0c8b1bfcc0b301b090addad21ef8a782336172baaf"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.0", output
  end
end
