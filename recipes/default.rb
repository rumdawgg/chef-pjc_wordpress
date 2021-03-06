#
# Cookbook:: pjc_wordpress
# Recipe:: default
#
# Copyright (C) 2017 Paul chicarello
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'pjc_lamp::default'

httpd_module 'ssl' do
  action :create
end

httpd_service 'wordpress' do
  instance 'wordpress'
  servername 'www.computers.biz'
  version '2.4'
  action %i[create start]
end
