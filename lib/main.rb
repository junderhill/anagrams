require "lib/AnagramFinder"
require "benchmark"

anagramFinder = AnagramFinder.new('dict250k.txt')

time = Benchmark.realtime do
    anagramFinder.find_anagrams
end

puts "Time elapsed #{time} seconds"

