#!/usr/bin/env ruby
# Make directory with formated date
# by wisemonkey
# 20190209
# oranbusiness@gmail.com
# github.com/wisehackermonkey

# filename 'init.rb'
require_relative 'lib/helper'

helper = Helper.new
puts '-' * 30
puts "Create Directory with formated date"
puts
puts "Created By wisemonkey"
puts '-' * 30
puts helper.current_dir
puts '-' * 30
print "Enter Folder name: "
puts helper.get_folder_name

