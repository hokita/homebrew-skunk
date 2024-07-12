class Skunk < Formula
  desc 'Very smelly'
  homepage 'https://github.com/hokita/skunk'
  url 'https://github.com/hokita/skunk/archive/1.2.0.tar.gz'
  sha256 '37f5ce0495fa6af677a21cec6ad5e9e6ec542dfb2475fe92a2cd370a37326322'
  license 'MIT'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', 'skunk'
    bin.install 'skunk'
  end

  test do
    system "#{bin}/skunk", '--version'
  end
end
