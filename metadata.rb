maintainer        "Brian Flad"
maintainer_email  "bflad417@gmail.com"
license           "Apache 2.0"
description       "Personal Chef Cookbook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
recipe            "bflad", "Placeholder recipe."
recipe            "bflad::workstation", "Maintains workstation configurations."

%w{ mac_os_x }.each do |os|
  supports os
end

%w{ rvm }.each do |cb|
  depends cb
end
