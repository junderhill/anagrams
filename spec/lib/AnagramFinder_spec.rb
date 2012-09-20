require "AnagramFinder"

describe "LoadWords" do
	before(:each) do
		@anagramFinder = AnagramFinder.new('dict45k.txt')
	end
	
	it "should return an array with 45425 elements" do
		@anagramFinder::words.length.should == 45425
	end
	
	it "should return Aarhus as the first element in the array" do
		@anagramFinder::words.first.should == "Aarhus"
	end
	it "should return Zurich as the last element in the array" do
		@anagramFinder::words.last.should == "Zurich"
	end
end

describe "CalculatePrimeFactorTotalForWord" do
  before(:each) do
		@anagramFinder = AnagramFinder.new('dict45k.txt')
	end
	
	it "should return 1 if empty string is passed" do
		@anagramFinder.CalculatePrimeFactorValueForWord("").should == 1
	end
	
	it "should return 2 if 'a' is passed" do
		@anagramFinder.CalculatePrimeFactorValueForWord("a").should == 2
	end
	
	it "should return  if 'london' is passed" do
		@anagramFinder.CalculatePrimeFactorValueForWord("london").should == 1057870219
	end
	
	it "should return  if 'LoNdOn' is passed" do
		@anagramFinder.CalculatePrimeFactorValueForWord("LoNdOn").should == 1057870219
	end
end  
  
describe "Find Anagrams" do
  before(:each) do
    @anagramFinder = AnagramFinder.new('testWords.txt')
  end
  
  it "" do
    
  end
end
	