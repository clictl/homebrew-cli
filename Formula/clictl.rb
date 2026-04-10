# typed: false
# frozen_string_literal: true

class Clictl < Formula
  desc "A package manager for AI agents"
  license "Apache-2.0"
  homepage "https://clictl.dev"
  version "0.1.0" # Updated automatically by release workflow

  on_macos do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-arm64.tar.gz"
      sha256 "930553db6f0e45a4d57afeec3ddc8f96a3bd611cf13208212fe17f0250ebaad3" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "6ab1e212702469f6e482766cb3b5b6818497a9eca47efa30dcea3b5059359a4d" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "581cf75888020a6a4126fb9986a5a33a1e324a83bfb8e110d995356f5e59fb28" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "d57393c051d09dc41432742532d1d8cc3c88b957f5795ce72f0a3d941463fa9f" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
