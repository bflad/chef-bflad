#
# Cookbook Name:: bflad
# Recipe:: workstation
#
# Copyright 2012
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "homebrew"

# Temporary fix for https://github.com/fnichol/chef-rvm/pull/120
chef_gem "rvm"

include_recipe "rvm::system"

case node['platform_family']
when "mac_os_x"
  link "#{node['bflad']['application_support_dir']}/Sublime Text 2" do
    to "#{node['bflad']['dropbox_dir']}/Personal/Sublime Text 2"
  end
  link "/usr/local/bin/subl" do
    to "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
  end
else
  Chef::Log.warn("Sorry, unsupported platform for workstation configuration.")
end
