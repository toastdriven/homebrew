require 'formula'

class Fontconfig < Formula
  url 'http://fontconfig.org/release/fontconfig-2.8.0.tar.gz'
  homepage 'http://fontconfig.org/'
  md5 '77e15a92006ddc2adbb06f840d591c0e'

  # Leopard comes with 2.4.x, which is too old for many packages.
  keg_only :provided_by_osx

  depends_on 'pkg-config'

  def install
    ENV.x11
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
