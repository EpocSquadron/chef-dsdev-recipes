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
include_recipe "apt"
include_recipe "networking_basic"
include_recipe "chef-dsdev-recipes::security_basic"
include_recipe "ntp"
include_recipe "vim"
