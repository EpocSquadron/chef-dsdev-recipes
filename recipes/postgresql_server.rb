#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This installs a basic postgresql server
# on a machine.
include_recipe "postgresql"
include_recipe "postgresql::server"
include_recipe "postgresql::config_initdb"
include_recipe "database::postgresql"
