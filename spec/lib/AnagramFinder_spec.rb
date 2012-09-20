require "AnagramFinder"

describe "LoadWordsFile" do
	before(:each) do
		@anagramFinder = AnagramFinder.new
		@words = @anagramFinder.LoadWords('dict45k.txt')
	end
	
	it "should return an array with 45425 elements" do
		@words.length.should == 45425
	end
	
	it "should return Aarhus as the first element in the array" do
		@words.first.should == "Aarhus"
	end
	it "should return Zurich as the last element in the array" do
		@words.last.should == "Zurich"
	end
end