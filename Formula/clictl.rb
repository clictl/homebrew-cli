# typed: false
# frozen_string_literal: true

class Clictl < Formula
  desc "A package manager for AI agents"
  license "Apache-2.0"
  homepage "https://clictl.dev"
  version "0.1.1" # Updated automatically by release workflow

  on_macos do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-arm64.tar.gz"
      sha256 "cba5f32d344e53edc8d6b8ae12eb5e2368b6549b2fc54c3339807ebd4d6cbe23" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "c404b58f36e8df1c68f7872df16642d72a126821ba978ab59082b3a59348576b" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "6604a698c8dcb2932cac16cd2bc8a0f3d79f6c3807e0c7ba5ca8c47096339647" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "59cf544198e4cf0bd7abeb08fa420e857f0979ac746378e6b6c0c7cd774ceb64" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
