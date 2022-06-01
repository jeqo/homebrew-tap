# Generated with JReleaser 1.0.0-M2 at 2022-06-01T01:07:09.545672875Z
class KfkQuotas < Formula
  desc "Kafka: CLI: Quotas: Manage Kafka Quotas."
  homepage "https://github.com/jeqo/kafka-cli/tree/quotas"
  version "0.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-quotas-v0.1.1/kfk-quotas-0.1.1-linux-x86_64.zip"
    sha256 "56dfa8f24fefddaf17092e5662abde8493db8f3448d61aee62226de22c685274"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/kafka-cli/releases/download/cli-quotas-v0.1.1/kfk-quotas-0.1.1-osx-x86_64.zip"
    sha256 "6035fe0c85bb870c7476ca02a254d48470b788a6c40a938c5e509b8c0c1b1325"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-quotas" => "kfk-quotas"
  end

  test do
    output = shell_output("#{bin}/kfk-quotas --version")
    assert_match "0.1.1", output
  end
end
