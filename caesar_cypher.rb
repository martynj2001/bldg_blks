def caesar_cipher (word, key)

	alphabet = [a..z]
	word.downcase
	
	encrypted.new(word.length){
		word.each do |l|
			index = alphabet.find_index(l)
			index += key
			alphabet[index]
		end
	}
	puts encrypted.join
end