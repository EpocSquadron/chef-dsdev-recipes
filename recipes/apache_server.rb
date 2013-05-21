#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: apache_server
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This set up an apache server on the box,
# including the wildcard vhost setup.

include_recipe "apache2"
include_recipe "apache2::mod_ssl"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_headers"
include_recipe "apache2::mod_deflate"
include_recipe "chef-dynamic-vhost"
