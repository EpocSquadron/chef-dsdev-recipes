#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node['mysql']['remove_anonymous_users'] = true
node['mysql']['allow_remote_root'] = false
node['mysql']['remove_test_database'] = true
