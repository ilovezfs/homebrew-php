require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Behat < AbstractPhpPhar
  init
  desc "behavior-driven development framework"
  homepage "http://behat.org/"
  url "https://github.com/Behat/Behat/releases/download/v3.2.1/behat.phar"
  version "3.2.1"
  sha256 "cd0592bcfd6bee7a9c1d8e56eb7aad834c9ff0ebb32d2da82d4a0462ad16d04d"

  bottle do
    cellar :any_skip_relocation
    sha256 "5ce4fa678695a86950658074af39b68e6808bcd85683081986d83aefc2e9430b" => :sierra
    sha256 "5ce4fa678695a86950658074af39b68e6808bcd85683081986d83aefc2e9430b" => :el_capitan
    sha256 "5ce4fa678695a86950658074af39b68e6808bcd85683081986d83aefc2e9430b" => :yosemite
  end

  test do
    system "behat", "--version"
  end
end
