name             'ffmpeg'
maintainer       'Gannett'
maintainer_email 'jneves@gannett.com'
license	         'All rights reserved'
description      'Installs ffmpeg'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version	         '1.0.1'

depends 'yum-gd'
depends 'build-essential'
depends 'ark', '~> 0.3'

%w( centos redhat ).each do |os|
  supports os
end
