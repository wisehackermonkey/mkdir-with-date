# helper class
# by wisemonkey
# 20190209
# oranbusiness@gmail.com
# github.com/wisehackermonkey

require "date"

class Helper 
	attr_reader :current_dir
	attr_reader :formated_dir_name
	attr_reader :date
	attr_reader :formated_date
	attr_reader :folder_name


	def initialize(opt={})
		@current_dir = opt[:date] || Dir.pwd
		@date = opt[:date] || Date.today
	end

	def create_project(name)
		get_formated_date(self.date)
		self.format_directory_name(name)
		@folder_name = "#{self.formated_date}_#{self.formated_dir_name}"
		unless self.create_directory(@folder_name)
			puts "Error: Folder name already exists."
			return false
		end
		puts "Successfully Created directory #{@folder_name}"	
		return true
	end

	def create_directory(name)
		path = File.join(Dir.pwd, name,"")
		unless File.directory?(path)
			Dir.mkdir(name)
			return true
		end
		return false
	end

	def get_formated_date(date)
		day = sprintf('%02d',date.day)
		month = sprintf('%02d',date.month)
		year = date.year
		@formated_date = "#{year}#{month}#{day}" 
	end

	def format_directory_name(string)
		split_by_space = string.split(" ")
		@formated_dir_name = split_by_space.join("_")
	end
end