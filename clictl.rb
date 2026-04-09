# typed: false
# frozen_string_literal: true

class Clictl < Formula
  desc "The package manager for your Agent"
  homepage "https://clictl.dev"
  version "0.1.0" # Updated automatically by release workflow

  on_macos do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-arm64.tar.gz"
      sha256 "5c3a6993a6ffd9c3f9001b26aecd2ec5f102bf5acf1a42311152ebf05bc55dce" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "4e69458375ebf7fff485db9ee075c52e344b988fa260c3c73bd017256e525076" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "12fc32761954b3bc1a0ab356cac4785d6dc6093fe822849ddc7207b626a6ba28" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "90a0e079565da78d140174de22a77de3fcacba0f517cfc0d70802fbcfc24b9dd" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
