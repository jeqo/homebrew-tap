# Generated with JReleaser 1.0.0-M2 at 2022-09-05T13:26:01.893763603Z
class KfkCtxExec < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/kafka-cli"
  url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.4.1/kfk-ctx-exec.jar", :using => :nounzip
  version "0.4.1"
  sha256 "1e252e6dc2a5baab18f8c46daf4e552be51c2f58ce5917e5ecff8195678a5a69"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "kfk-ctx-exec.jar"
    bin.write_jar_script libexec/"kfk-ctx-exec.jar", "kfk-ctx-exec"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx-exec --version")
    assert_match "0.4.1", output
  end
end
