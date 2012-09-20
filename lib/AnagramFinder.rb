class AnagramFinder
	def LoadWords(filename)
		File.readlines(filename).collect {|line| line.gsub(/[^a-z]/i, '')}
	end
end