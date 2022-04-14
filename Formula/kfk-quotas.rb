# Generated with JReleaser 1.0.0-M2 at 2022-04-14T15:04:14.598481959Z
class KfkQuotas < Formula
  desc "Kafka: CLI: Quotas: Manage Kafka Quotas."
  homepage "https://github.com/jeqo/poc-apache-kafka"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-quotas-v0.1.0/kfk-quotas-0.1.0-linux-x86_64.zip"
    sha256 "f4ca1af8741bc2a15ca13da1694c2d435dfa30df4508a12ae448ba65c9d2fac7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jeqo/poc-apache-kafka/releases/download/cli-quotas-v0.1.0/kfk-quotas-0.1.0-osx-x86_64.zip"
    sha256 "d1428a90c95212a63f8311d6961dd161a9163050a47ad82a71b64e554b699052"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kfk-quotas" => "kfk-quotas"
  end

  test do
    output = shell_output("#{bin}/kfk-quotas --version")
    assert_match "0.1.0", output
  end
end
