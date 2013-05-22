#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Allow connections to mongodb from the local
# private network.
simple_iptables_rule "mongodb" do
  rule "--proto tcp --dport 27017 -d 33.33.33.40"
  jump "ACCEPT"
end
