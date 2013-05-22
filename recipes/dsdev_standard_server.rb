#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This will set up a standard php5.4, apache
# setup, with the ability to connect to mysql
# and postgres on a dsdev_database_server.
# Also comes with all the bells and whistles
# for development.
include_recipe "chef-dsdev-recipes::ubuntu_base"
include_recipe "chef-dsdev-recipes::security_web_server"
include_recipe "chef-dsdev-recipes::php_current_dev"
include_recipe "chef-dsdev-recipes::php_with_mysql"
include_recipe "chef-dsdev-recipes::php_with_postgresql"
include_recipe "chef-dsdev-recipes::apache_server"
include_recipe "chef-dsdev-recipes::apache_with_php"
include_recipe "chef-dynamic-vhost"
include_recipe "git"
