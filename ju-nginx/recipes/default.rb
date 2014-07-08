#
# Cookbook Name:: ju-nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "sudo add-apt-repository ppa:nginx/stable" do
  command "sudo add-apt-repository ppa:nginx/stable"
end

execute "sudo apt-get update" do
  command "sudo apt-get update"
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file "/etc/nginx/nginx.conf" do
  source "nginx.conf"
  mode "0644"
end

cookbook_file "/etc/nginx/sites-enabled/chintu" do
  source "chintu"
  mode "0644"
end

service 'nginx' do
  action [ :enable, :restart ]
end
