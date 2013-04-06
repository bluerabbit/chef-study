#
# Cookbook Name:: locale
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if platform?("ubuntu", "debian")
  package "locales" do
    action :install
  end

  package "language-pack-ja" do
    action :install
  end

  execute "Update locale" do
    command "sudo dpkg-reconfigure locales"
    command "sudo export LANG=C"
    command "update-locale LANG=#{node[:locale][:lang]}"
  end
end
