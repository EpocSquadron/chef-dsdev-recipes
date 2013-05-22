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
  rule "--proto tcp --dport 3306 -d 33.33.33.40"
  jump "ACCEPT"
end
