#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Installs the current version of php, with
# linters, unit testers, debuggers etc..
include_recipe "openssl"
include_recipe "chef-php-extra::development"
include_recipe "php::module_curl"
include_recipe "chef-php-extra::module_mysql"
