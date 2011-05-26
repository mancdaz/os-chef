#
# Cookbook Name:: ssh
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "ssh"

template "/etc/ssh/sshd_config" do
  source "sshd_config.erb"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[ssh]"
end

service "ssh" do
	action [:enable, :restart]
end
