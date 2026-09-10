class SwarmDao < Formula
  desc "Multi-host AI agent governance CLI"
  homepage "https://github.com/guyghost/swarm-dao"
  url "https://registry.npmjs.org/@guyghost/swarm-dao-cli/-/swarm-dao-cli-0.11.1.tgz"
  sha256 "bfc5fb5c403927bb39fb9199c7dc2844548909d5b5d253595a6e40890f7b7169"
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
