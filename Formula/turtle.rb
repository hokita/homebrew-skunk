class Turtle < Formula
  desc 'Try a slow life like turtle.'
  homepage 'https://github.com/hokita/turtle'
  url 'https://github.com/hokita/turtle/archive/0.0.3.tar.gz'
  sha256 '3bab070caac1a2c41d5830b8149dc3f67cbaa464993275a9602f1e1ecd319495'
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
