class AnagramFinder
	CHAR_MAP = { "a" => 2, "b" => 3, "c" => 5, "d" => 7, "e" => 11, "f" => 13, "g" =>17, "h" =>19, "i" => 23, "j" => 29, "k" => 31, "l" => 37, "m" => 41, "n" =>43, "o" =>47, "p" => 53, "q" =>59, "r" => 61, "s" => 67, "t" => 71, "u" => 73, "v" => 79, "w" => 83, "x" => 89, "y" => 97, "z" => 101 }
	@words = []
	
	attr_accessor :words
	
	
	def initialize(filename)
		@words = LoadWords(filename)
	end
	
	def LoadWords(filename)
		File.readlines(filename).collect {|line| line.gsub(/[^a-z]/i, '')}
	end
	
	def CalculatePrimeFactorValueForWord(word)
		word.downcase.each_char.inject(1) {|result, c| result * CHAR_MAP[c] }
	end
	
	def get_hash_of_words_by_value
    wordvaluehash = @words.group_by { |word| CalculatePrimeFactorValueForWord(word) }
	end
	
	def FindAnagrams
	    puts('Anagrams:')
	    
	    wordvaluehash = get_hash_of_words_by_value
	    wordvaluehash.each { |value, words|
	      if words.length > 1
	          puts words.join(', ')
        end
      }
  end
end