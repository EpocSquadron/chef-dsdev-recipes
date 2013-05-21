#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Allow HTTP, HTTPS
simple_iptables_rule "http" do
  rule [ "--proto tcp --dport 80",
         "--proto tcp --dport 443" ]
  jump "ACCEPT"
end
