#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This will create a complete database server,
# with all the bells and whistles for development.
include_recipe "chef-dsdev-recipes::ubuntu_base"
include_recipe "chef-dsdev-recipes::mysql_server"
include_recipe "chef-dsdev-recipes::mongo_server"
include_recipe "chef-dsdev-recipes::postgresql_server"
