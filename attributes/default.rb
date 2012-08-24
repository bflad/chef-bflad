#
# Cookbook Name:: bflad
# Attributes:: bflad
#
# Copyright 2012
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['bflad']['username'] = "bflad"

case platform_family
when mac_os_x
  default['bflad']['home_dir'] = "/Users/#{node['bflad']['username']}"
  default['bflad']['application_support_dir'] = "#{node['bflad']['home_dir']}/Library/Application Support"
  default['bflad']['dropbox_dir'] = "#{node['bflad']['home_dir']}/Dropbox"
end
