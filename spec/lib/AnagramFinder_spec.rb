require "AnagramFinder"

describe "load_words" do
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
		@anagramFinder.calculate_primefactor_value_for_word("").should == 1
	end
	
	it "should return 2 if 'a' is passed" do
		@anagramFinder.calculate_primefactor_value_for_word("a").should == 2
	end
	
	it "should return  if 'london' is passed" do
		@anagramFinder.calculate_primefactor_value_for_word("london").should == 1057870219
	end
	
	it "should return  if 'LoNdOn' is passed" do
		@anagramFinder.calculate_primefactor_value_for_word("LoNdOn").should == 1057870219
	end
end  
  
describe "Hash words by value" do
    subject { AnagramFinder.new('testWords.txt') }
    
    it "should return a hash table" do
      subject.get_hash_of_words_by_value.length.should > 0
    end
end  
  
#describe "Find Anagrams" do
#  subject { AnagramFinder.new('testWords.txt') }
#
#  it "outputs the title anagrams to terminal" do
#    subject.should_receive(:puts).at_least(1).times.with("Anagrams:")
#    subject.find_anagrams
#  end
#  
#  it "outputs listen, followed by silent" do
#    subject.should_receive(:puts).at_least(1).times.with("listen, silent")
#    subject.find_anagrams
#  end   
#end
	