require 'mkmf'

$defs << "-DHAVE_CONFIG_H"
$INCFLAGS << " -I$(srcdir)/.. -I$(hdrdir)/ruby -I/usr/include/ruby-2.7.0/ruby"

have_header('ruby/digest.h')

$preload = %w[digest]

create_makefile('digest/whirlpool')
