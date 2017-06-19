name 'pjc_wordpress'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Installs/Configures pjc_wordpress'
version '0.1.0'

%w[redhat centos scientific oracle].each do |el|
  supports el, '>= 6.0'
end

depends 'pjc_lamp', '~> 0.1.0'
depends 'httpd', '~> 0.4.5'

issues_url 'https://github.com/rumdawgg/chef-pjc_wordpress/issues' if respond_to?(:issues_url)
source_url 'https://github.com/rumdawgg/chef-pjc_wordpress' if respond_to?(:source_url)
chef_version '>= 12.6' if respond_to?(:chef_version)
