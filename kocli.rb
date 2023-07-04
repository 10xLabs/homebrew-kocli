# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc "Internal Kolors CLI"
  homepage "https://github.com/10xLabs/kocli"
  version "1.9.0"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/10xLabs/kocli/releases/download/v1.9.0/kocli_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4af60708afd72b717ebed7803510f660b3a5f62aa98ea97d6ed24ced6f962385"

      def install
        bin.install "ko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/10xLabs/kocli/releases/download/v1.9.0/kocli_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "07134f058767d3b8684cf62248ae1598a979ac55bd63aac3b3036a716d1cced0"

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
end
