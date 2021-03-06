#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Set up fail2ban to auto-ban rapid repeated attempts
# at logging into the box.
include_recipe "fail2ban"

# This will set up a simple firewall for our base boxes.
include_recipe "simple_iptables"

# Reject packets other than those explicitly allowed
simple_iptables_policy "INPUT" do
  policy "DROP"
end

# Allow all traffic on the loopback device
simple_iptables_rule "system" do
  rule "--in-interface lo"
  jump "ACCEPT"
end

# Allow any established connections to continue, even
# if they would be in violation of other rules.
simple_iptables_rule "system" do
  rule "-m conntrack --ctstate ESTABLISHED,RELATED"
  jump "ACCEPT"
end

# Allow SSH
simple_iptables_rule "system" do
  rule "--proto tcp --dport 22"
  jump "ACCEPT"
end
