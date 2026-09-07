class SwarmDao < Formula
  desc "Multi-host AI agent governance CLI"
  homepage "https://github.com/guyghost/swarm-dao"
  url "https://registry.npmjs.org/@guyghost/swarm-dao-cli/-/swarm-dao-cli-0.10.0.tgz"
  sha256 "f83892af3eb64cb130456a772492477c021e36f3a71fe437228f1d7932d0429b"
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
