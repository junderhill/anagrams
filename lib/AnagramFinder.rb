class AnagramFinder
	CHAR_MAP = { "a" => 2, "b" => 3, "c" => 5, "d" => 7, "e" => 11, "f" => 13, "g" =>17, "h" =>19, "i" => 23, "j" => 29, "k" => 31, "l" => 37, "m" => 41, "n" =>43, "o" =>47, "p" => 53, "q" =>59, "r" => 61, "s" => 67, "t" => 71, "u" => 73, "v" => 79, "w" => 83, "x" => 89, "y" => 97, "z" => 101 }
	@words = []
	
	attr_accessor :words
	
	
	def initialize(filename)
		@words = load_words(filename)
	end
	
	def load_words(filename)
		File.readlines(filename).collect {|line| line.gsub(/[^a-z]/i, '')}
	end
	
	def calculate_primefactor_value_for_word(word)
		word.downcase.each_char.inject(1) {|result, c| result * CHAR_MAP[c] }
	end
	
	def get_hash_of_words_by_value
    wordvaluehash = @words.group_by { |word| calculate_primefactor_value_for_word(word) }
	end
	
	def find_anagrams
	    puts('Anagrams:')
	    
	    wordvaluehash = get_hash_of_words_by_value
	    wordvaluehash.each { |value, words|
	      if words.length > 1
	          puts words.join(', ')
        end
      }
  end
end