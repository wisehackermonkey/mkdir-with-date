class Helper 
	attr_accessor :directory_name
	attr_reader :current_dir
	def initialize
		@current_dir = Dir.pwd
	end

	def create_directory(path)
		puts "TODO create_directory"
	end

	def get_folder_name
		@directory_name = gets.chomp
	end
	
	def format_directory_name
	end
end