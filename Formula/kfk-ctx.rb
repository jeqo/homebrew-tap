# Generated with JReleaser 1.0.0-M2 at 2022-03-26T12:46:10.998011986Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.2.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.6/kfk-ctx-0.2.6-linux-x86_64.zip"
    sha256 "004ce39d1caca569f35ab419d5feb4fc0971ec0083881d64da64ac227a78a637"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-context-v0.2.6/kfk-ctx-0.2.6-osx-x86_64.zip"
    sha256 "636776a391fde4efc5bdf1f9ef7f1ef43781d57d97ad53b678e66970ad5bbc30"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.2.6", output
  end
end
