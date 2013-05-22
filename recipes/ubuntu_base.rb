#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This includes all the standard linux utilities
# for an ubuntu box.

# We need apt on ubuntu
include_recipe "apt"

# Here are some networking tools, including
# iptables, wget, curl, etc...
include_recipe "networking_basic"

# Let's build in security features
include_recipe "chef-dsdev-recipes::security_basic"

# We want to set the timezone and time properly.
node['tz'] = 'America/New_York'
include_recipe "timezone-ii::debian"
include_recipe "ntp"

# Everyone needs vim.
include_recipe "vim"
