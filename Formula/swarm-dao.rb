class SwarmDao < Formula
  desc "Multi-host AI agent governance CLI"
  homepage "https://github.com/guyghost/swarm-dao"
  url "https://registry.npmjs.org/@guyghost/swarm-dao-cli/-/swarm-dao-cli-0.7.0.tgz"
  sha256 "3f2d5a9516fadac586ae67f4dce629e5a7edd1a9052afd4d853ef6e460002c93"
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
