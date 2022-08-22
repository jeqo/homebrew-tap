# Generated with JReleaser 1.0.0-M2 at 2022-08-22T17:47:36.589502293Z
class KfkCtx < Formula
  desc "Kafka: CLI: Context: Manage Kafka cluster contexts."
  homepage "https://github.com/jeqo/kafka-cli"
  version "0.4.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.4.0/kfk-ctx-0.4.0-linux-x86_64.zip"
    sha256 "217ff555e366911468c89d24705d2769f63ae3adf560d30c9426aaa81430f131"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-context-v0.4.0/kfk-ctx-0.4.0-osx-x86_64.zip"
    sha256 "e5c5d7a2b98d1305a32a5bd5c3866b4eeb05bc57a206918fb133dc5bdbade8c1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-ctx" => "kfk-ctx"
  end

  test do
    output = shell_output("#{bin}/kfk-ctx --version")
    assert_match "0.4.0", output
  end
end
