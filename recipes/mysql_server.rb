#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This sets up a simple mysql server, with
# a remote user on a machine.
include_attribute "chef-dsdev-database::mysql"
include_recipe "mysql"
include_recipe "mysql::server"
include_recipe "database::mysql"
include_recipe "chef-dsdev-database::mysql_remote_access"
