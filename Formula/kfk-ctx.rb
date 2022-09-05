# Generated with JReleaser 1.0.0-M2 at 2022-09-05T13:26:01.893763603Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.4.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.4.1/kfk-ctx-0.4.1-linux-x86_64.zip"
    sha256 "69e6476a12509ac2689bd934433f61c84a199342d9fc5be32f2704dedc80f683"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.4.1/kfk-ctx-0.4.1-osx-x86_64.zip"
    sha256 "8b02559ba6d8cfb2026d1350cc4ffd5cab976d992ac9e7b27da7f060a3e9489f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.4.1", output
  end
end
