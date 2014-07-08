#
# Cookbook Name:: ju-nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/nginx/nginx.conf" do
  source "nginx.conf"
  mode "0644"
end

cookbook_file "/etc/nginx/sites-enabled/nginx.conf" do
  source "chintu"
  mode "0644"
end

service 'nginx' do
  action [ :enable, :restart ]
end
