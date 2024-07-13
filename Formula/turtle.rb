class Turtle < Formula
  desc 'Try a slow life like turtle.'
  homepage 'https://github.com/hokita/turtle'
  url 'https://github.com/hokita/turtle/archive/0.0.1.tar.gz'
  sha256 '2036dbb4067515221796148015f5e70e31cc1055c7477367f29a2ede327bfdf0'
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
