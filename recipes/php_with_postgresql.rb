#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This installs the means for php to communicate
# with postgresql servers.
include_recipe "postgresql::client"
include_recipe "php::module_pgsql"
