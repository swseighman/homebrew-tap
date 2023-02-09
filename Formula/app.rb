# Generated with JReleaser 1.4.0 at 2023-02-09T15:07:29.804948082-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/swseighman/jreleaser-app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "67333442c775eb3e133f242a5f5f3beb7d2dd9a83b24bf7729e05764cdaab5d2"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
