#
# Cookbook Name:: chef-dsdev-recipes
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# This sets up a simple mongo server on a
# machine.
include_recipe "chef-dsdev-recipes::security_mongo_server"
include_recipe "mongodb::10gen_repo"
include_recipe "mongodb"
