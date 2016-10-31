class Igbinary < Formula
  desc "Drop in replacement for the standard php serializer."
  homepage "https://pecl.php.net/package/igbinary"
  url "https://github.com/igbinary/igbinary/archive/2.0.0.tar.gz"
  sha256 "778ddd846464e0b918c58e672e6aa6b27745dc3fa2126d33ed60bc9985cc3f0b"
  head "https://github.com/igbinary/igbinary.git"

  bottle do
    cellar :any_skip_relocation
    rebuild 1
    sha256 "8f477e5210cdd1a79bac520f9aa978492ad0e82cac8c6d208325b24280a8121a" => :sierra
    sha256 "634d3f7193996f225520d30366567680a50ac51a6ebbef923f194f8ce70a5955" => :el_capitan
    sha256 "5a38a58cfb7ca2749a478c9efb329e55b5bd9e9157d0874d672eed5a4a369cc4" => :yosemite
    sha256 "34d8a2aa98964de408be73d2a79eba66114dfe9fc04643e69d3c0cff372bfed3" => :mavericks
  end

  def install
    include.install Dir["src/php5/*.h"]
  end
end
