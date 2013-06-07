#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Allow connections to postgresql from the local
# private network.
simple_iptables_rule "postgresql" do
  rule "--proto tcp --dport 5432 -d #{node['chef-dsdev-database']['db_address']}"
  jump "ACCEPT"
end
