# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc ""
  homepage ""
  version "1.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/10xLabs/kocli/releases/download/v1.4.2/kocli_1.4.2_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b8247a774edb481b421ffd460efb73ecd2aca00ec447739252e604e793a568bd"

      def install
        bin.install "ko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/10xLabs/kocli/releases/download/v1.4.2/kocli_1.4.2_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b39a80b3374ec938dbc42de6a03b800abed48a763b86763f9e83255f1ca27ce8"

      def install
        bin.install "ko"
      end
    end
  end

  head "https://github.com/10xLabs/kocli.git"

  depends_on "git"
  depends_on "zsh" => :optional

  def caveats; <<~EOS
    To start using kocli use "ko"
      ko --help
      ko --version
  EOS
  end
end
