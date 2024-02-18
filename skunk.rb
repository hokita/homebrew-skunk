class Skunk < Formula
  desc 'Very smelly'
  homepage 'https://github.com/hokita/skunk'
  url 'https://github.com/hokita/skunk/archive/1.1.0.tar.gz'
  sha256 'fb7e5b7aaa60eba09898e2749717459145b769330a0bd81c7c2c50f7c5a103ab'
  license ''

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', 'skunk'
    bin.install 'skunk'
  end

  test do
    system 'skunk', '--version'
  end
end
