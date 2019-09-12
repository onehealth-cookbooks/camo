# frozen_string_literal: true

#
# Cookbook Name:: camo
# Recipe:: _upstart
#
# Copyright 2012-2014, OneHealth Solutions, Inc.
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

package 'upstart' do
  action :install
end

# create the upstart script
template "/etc/init/#{node['camo']['app_name']}.conf" do
  source 'upstart.conf.erb'
  owner 'root'
  group 'users'
  mode '0644'
  notifies :restart, "service[#{node['camo']['app_name']}]", :delayed
end

service node['camo']['app_name'] do
  if platform?('ubuntu')
    provider Chef::Provider::Service::Upstart if node['platform_version'].to_f >= 9.10
  end
  action %i[enable start]
end
