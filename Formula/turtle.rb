class Turtle < Formula
  desc 'Try a slow life like turtle.'
  homepage 'https://github.com/hokita/turtle'
  url 'https://github.com/hokita/turtle/archive/0.0.2.tar.gz'
  sha256 '062f0dcafa623b8c186ee42dd4cfd07a2ca888795b70864f977224f4c817dc79'
  license 'MIT'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', 'turtle'
    bin.install 'turtle'
  end

  test do
    system "#{bin}/turtle", '--version'
  end
end
