# Odin Project Ruby Programming Building Blocks Problem 3
# Sub Strings

def substrings(word, dictionary)

	word_count = {}

	dictionary.each do |sub|
		if word.include?(sub)
			word_count[sub] = 1
		end
	puts word_count
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("below", dictionary)