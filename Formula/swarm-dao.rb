class SwarmDao < Formula
  desc "Multi-host AI agent governance CLI"
  homepage "https://github.com/guyghost/swarm-dao"
  url "https://registry.npmjs.org/@guyghost/swarm-dao-cli/-/swarm-dao-cli-0.8.0.tgz"
  sha256 "86ccbc71eeada2c9c8c552d2277336991cb8f48569e2728b61c1aba186511b34"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "(no proposals)", shell_output("#{bin}/swarm-dao list")
  end
end
