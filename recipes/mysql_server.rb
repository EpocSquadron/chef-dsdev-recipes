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

# Ubuntu 12.10 needs the ruby-dev package for the
# ruby headers, so the mysql ruby gem can be built.
if node['platform_family'] = 'ubuntu'
	node['mysql']['client']['packages'] = ["build-essential", "mysql-client", "libmysqlclient-dev", "ruby-dev"]
end

include_recipe "mysql"
include_recipe "mysql::server"
include_recipe "database::mysql"
include_recipe "chef-dsdev-recipes::security_mysql_server"
include_recipe "chef-dsdev-database::mysql_remote_access"
