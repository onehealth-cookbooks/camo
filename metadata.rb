name 'camo'
maintainer 'OneHealth Solutions, Inc.'
maintainer_email 'cookbooks@onehealth.com'
license 'Apache 2.0'
description 'Configures camo - a small http proxy to simplify routing images through an SSL host'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.0'
supports 'ubuntu', '>= 12.04'
supports 'centos', '>= 6.5'
depends	'nodejs'
depends 'git'
depends 'runit'
