# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc "Internal Kolors CLI"
  homepage "https://github.com/10xLabs/kocli"
  version "1.12.0"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/10xLabs/kocli/releases/download/v1.12.0/kocli_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9710841de581e653e9386422a308c8c33d0d09f6956bd03e50bcfb64ab8529ab"

      def install
        bin.install "ko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/10xLabs/kocli/releases/download/v1.12.0/kocli_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c8e8e8abd76be4d0a96ba7b4eafc01b8e64045f1d1dcc1130bd162bfa246f819"

      def install
        bin.install "ko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/10xLabs/kocli/releases/download/v1.12.0/kocli_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3b7bf767092a99053fd1491a748d9febe5d9965679a0e53d91a28a404c76e8ff"

      def install
        bin.install "ko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/10xLabs/kocli/releases/download/v1.12.0/kocli_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "88e819ac1c56404b8851b9acbea00d6acc506d1ba5ddeb4e83379be63a0c4677"

      def install
        bin.install "ko"
      end
    end
  end

  head "https://github.com/10xLabs/kocli.git"

  def caveats
    <<~EOS
      To start using kocli use "ko"
        ko --help
        ko --version
    EOS
  end

  test do
    ko --help
  end
end
