# Generated with JReleaser 1.0.0-M2 at 2022-09-26T11:16:17.362423468Z
class KfkProducerDatagenExec < Formula
  desc "Kafka CLI: Producer Datagen"
  homepage "https://github.com/jeqo/kafka-cli"
  url "https://github.com/jeqo/kafka-cli/releases/download/cli-producer-datagen-v0.3.0/kfk-producer-datagen-exec.jar", :using => :nounzip
  version "0.3.0"
  sha256 "8879f7cec64b6d426f4678b0199c4fc1b9053d92ac86ac00fb978529a28052cf"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "kfk-producer-datagen-exec.jar"
    bin.write_jar_script libexec/"kfk-producer-datagen-exec.jar", "kfk-producer-datagen-exec"
  end

  test do
    output = shell_output("#{bin}/kfk-producer-datagen-exec --version")
    assert_match "0.3.0", output
  end
end
