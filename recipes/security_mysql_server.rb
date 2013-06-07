#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Allow connections to mysql from the local
# private network.
simple_iptables_rule "mysql" do
  rule "--proto tcp --dport 3306 -d #{node['chef-dsdev-database']['db_address']}"
  jump "ACCEPT"
end

# Set some security settings on mysql itself.
node['mysql']['remove_anonymous_users'] = true
node['mysql']['allow_remote_root'] = false
node['mysql']['remove_test_database'] = true
