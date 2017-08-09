# Odin Project Ruby Programming Building Blocks Problem 3
# Sub Strings

def substrings(word, dictionary)

	word_count = {}

	word_array = word.downcase.split(/ /)

	dictionary.each do |sub|
		word_array.each do |w|
			if w.include?(sub)
				if word_count.has_key?(sub)
					word_count[sub] += 1
				else
					word_count[sub] = 1
				end
			end
		end
	end
	puts word_count
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("below i horn horn going down down down", dictionary)