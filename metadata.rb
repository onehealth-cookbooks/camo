# frozen_string_literal: true

name 'camo'
maintainer 'Sander van Zoest'
maintainer_email 'sander+cookbooks@vanzoest.com'
license 'Apache-2.0'
description 'Configures camo - a small http proxy to simplify routing images through an SSL host'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://github.com/svanzoest-cookbooks/camo/issues'
source_url 'https://github.com/svanzoest-cookbooks/camo/'
version '0.9.4'
chef_version '>= 12.5' if respond_to?(:chef_version)
supports 'debian', '>= 7.0'
supports 'ubuntu', '>= 12.04'
supports 'centos', '>= 6.6'
supports 'redhat', '>= 6.6'
supports 'fedora'
supports 'amazon'
depends  'nodejs'
depends 'git'
depends 'runit'
depends 'deploy_resource'
