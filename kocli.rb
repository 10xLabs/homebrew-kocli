# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Kocli < Formula
  desc "Internal Kolors CLI"
  homepage "https://github.com/10xLabs/kocli"
  version "1.23.5"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/10xLabs/kocli/releases/download/v1.23.5/kocli_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "52670232f924a8467fc40938882bd61e5d708a0289a2f0242765cc580be47250"

      def install
        bin.install "ko"
      end
    end
    on_arm do
      url "https://github.com/10xLabs/kocli/releases/download/v1.23.5/kocli_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "659f93468aa82a7d7e8e3836f21833b8af75dc3cf7341bbb574993766027c220"

      def install
        bin.install "ko"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/10xLabs/kocli/releases/download/v1.23.5/kocli_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "c130ba8ae98285c9303e7c90d2d81482be694aa374b00b70921e81ec33551f61"

        def install
          bin.install "ko"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/10xLabs/kocli/releases/download/v1.23.5/kocli_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "a93034f9be27ed0acf6cc5bbb62d4f569d88815481c2ee519f2cd13b91a56093"

        def install
          bin.install "ko"
        end
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
