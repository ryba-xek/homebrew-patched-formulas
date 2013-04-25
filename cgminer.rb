require 'formula'

class Cgminer < Formula
  homepage 'https://github.com/ckolivas/cgminer'
  url 'https://github.com/ckolivas/cgminer/archive/v2.10.4.zip'
  sha1 'cf592852b913749378db7f43a561b90c2b6448be'

  depends_on 'automake' => :build
  depends_on 'curl' => :build
  depends_on 'c-ares' => :build
  depends_on 'libusb'
  depends_on 'pkg-config' => :build

  def install
    ENV['NOCONFIGURE'] = '1'

    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--enable-cpumining"
    system "make install"
  end
end
