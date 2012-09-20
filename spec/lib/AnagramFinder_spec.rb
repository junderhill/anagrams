require "AnagramFinder"

describe "LoadWordsFile" do
	before(:each) do
		@anagramFinder = AnagramFinder.new
	end
	
	it "should return an array with 45425 elements" do
		@anagramFinder.LoadWords('dict45k.txt').length.should == 45425
	end
end