require "helper"

describe "Helper" do
	describe "attributes" do 
		it "allows reading for :directory_name" do
			helper = Helper.new
			puts helper.current_dir
			expect(helper.current_dir).to eq(Dir.pwd)
		end
		it "allows reading for :directory_name" do
			
		end
	end
end