#
# Cookbook Name:: zshrc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rc_file = '/home/vagrant/.zshrc'

template rc_file do
  source "zshrc.erb"
end

file rc_file do
  owner "root"
  group "root"
  mode "0644"
end