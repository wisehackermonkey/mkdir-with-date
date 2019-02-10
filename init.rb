#!/usr/bin/env ruby
# Make directory with formated date
# by wisemonkey
# 20190209
# oranbusiness@gmail.com
# github.com/wisehackermonkey

# filename 'init.rb'
require_relative 'lib/helper'

# get user input from commandline arguments
input_array = ARGV

helper = Helper.new
puts '-' * 30
puts "Generate project folder"
puts '-' * 30
puts "Created By wisemonkey"
puts '-' * 30
# when a user enters command line arguments
# dont ask for folder name 
unless input_array.length > 0 
	print "Enter Folder name: "
	folder_name = gets.chomp
else 
	folder_name = input_array.join(" ")
end

if helper.create_project(folder_name)
	puts '-' * 30
	puts "Created folder: #{helper.folder_name}"
	puts '-' * 30
end


	