class Skunk < Formula
  desc 'Very smelly'
  homepage 'https://github.com/hokita/skunk'
  url 'https://github.com/hokita/skunk/archive/1.0.0.tar.gz'
  sha256 '475098760e318f97d3d98b01dfeb7c495e87c60c45072d190e09b35e1265724d'
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
