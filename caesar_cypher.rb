def caesar_cipher (word, key)

	alphabet = ("a".."z").to_a
	encrypted = []

	word.downcase!
	
	word.each_char do |l|
		index = alphabet.find_index(l)
		index += key
		puts "Encryption for #{l} is: #{alphabet[index]}"
		encrypted << alphabet[index]
	end
	puts "Caesar Cypher for #{word} is #{encrypted.join}"
end

 puts "Enter word to encrypt:"
 w = gets.chomp
 puts " Enter key (must be an integer)"
 k = gets.chomp
 caesar_cipher(w, k.to_i)