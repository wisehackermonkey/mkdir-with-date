# helper class
# by wisemonkey
# 20190209
# oranbusiness@gmail.com
# github.com/wisehackermonkey

require "date"

class Helper 
	attr_reader :name, :current_dir, :formated_dir_name, :date, :formated_date, :folder_name

	def initialize(opt={})
		@current_dir = opt[:pwd] || Dir.pwd
		@date = opt[:date] || Date.today
	end

	def create_project(name)
		@name = name
		get_formated_date()
		format_directory_name()
		@folder_name = "#{formated_date}_#{formated_dir_name}"
		unless create_directory()
			puts "Error: Folder name already exists."
			return false
		end
		puts "Successfully Created directory #{@folder_name}"	
		return true
	end

	def create_directory(opt={})
		name = opt[:name] || @folder_name
		path = File.join(Dir.pwd, name,"")
		unless File.directory?(path)
			Dir.mkdir(name)
			return true
		end
		return false
	end

	def get_formated_date(opt={})
		date = opt[:date] || @date
		day = sprintf('%02d',date.day)
		month = sprintf('%02d',date.month)
		year = date.year
		@formated_date = "#{year}#{month}#{day}" 
	end

	def format_directory_name(opt={})
		name = opt[:name] || @name
		split_by_space = name.split(" ")
		@formated_dir_name = split_by_space.join("_")
	end
end