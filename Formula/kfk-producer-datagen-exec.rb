# Generated with JReleaser 1.0.0-M2 at 2022-09-05T13:01:28.166185664Z
class KfkProducerDatagenExec < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.2.6/kfk-producer-datagen-exec.jar", :using => :nounzip
  version "0.2.6"
  sha256 "b7f6b10b6183613f408c2249cac61b611e150ba0646be9abcb97ae3d3c283576"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "kfk-producer-datagen-exec.jar"
    bin.write_jar_script libexec/"kfk-producer-datagen-exec.jar", "kfk-producer-datagen-exec"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen-exec --version")
    assert_match "0.2.6", output
  end
end
