require "helper"

describe "Helper" do
	describe "attributes" do 
		it "allows reading for :directory_name" do
			helper = Helper.new
			puts helper.current_dir
			expect(helper.current_dir).to eq(Dir.pwd)
		end
		it "replace spaces in :directory_name with undescores" do
			helper = Helper.new
			expect(helper.format_directory_name("test test")).to eq("test_test")
		end
		it "return custom date format" do 
			helper = Helper.new
			date = Date.new(2018,10,27)
			expect(helper.get_formated_date(date)).to eq("20181027")
		end
		it "create directory from :formated_dir_name in :current_dir" do
			helper = Helper.new
			name = "test"
			helper.create_directory(name)
			expect(Dir.entries('.').include?(name)).to be true
			Dir.rmdir(name)
		end
	end
	describe "client_Helper" do
		it "create project folder by #create_project" do
			helper = Helper.new({:date => Date.new(2018,10,27)})
			name = "test"
			dir_name = "20181027_" + name
			helper.create_project(name)
			expect(Dir.entries('.').include?(dir_name)).to be true
			Dir.rmdir(dir_name)
		end
		it "returns if project folder was created" do
			helper = Helper.new({:date => Date.new(2018,10,27)})
			name = "test"
			dir_name = "20181027_" + name
			expect(helper.create_project(name)).to be true
			Dir.rmdir(dir_name)
		end
		it "return final formated project dir name" do 
			helper = Helper.new({:date => Date.new(2018,10,27)})
			name = "test"
			dir_name = "20181027_" + name
			helper.create_project(name)
			expect(helper.folder_name).to eq(dir_name)
			Dir.rmdir(dir_name)
		end
	end
end