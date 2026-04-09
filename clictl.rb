# typed: false
# frozen_string_literal: true

class Clictl < Formula
  desc "The package manager for your Agent"
  homepage "https://clictl.dev"
  version "0.1.0" # Updated automatically by release workflow

  on_macos do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-arm64.tar.gz"
      sha256 "d3e6c69360d25f9b86c3851036f9339e628e80a7267d2231119598a1b13517dd" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "67d9bda6bb27f04abe3f87bfe578ef41188b92313142d2e46d8883321032e72e" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "18e10d1fbefaf12bba5e8033da473e86444392cda7206a84765815dab8f49e3d" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "dec615777a11b9b93cb2c80b140cb1955306524b99cad64fd30af25d39854324" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
