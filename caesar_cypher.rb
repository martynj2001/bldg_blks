 def caesar_cipher (word, key)

	alphabet_l = ("a".."z").to_a
	alphabet_c = ("A".."Z").to_a
	puts alphabet_l.length
	encrypted = []
	
	word.each_char do |l|
		if l == " " # Check for spaces
			encrypted << " "
		elsif !alphabet_l.include?(l) && !alphabet_c.include?(l) # Check for non-alphabetic chars
			encrypted << l
		else
			if alphabet_c.include?(l)
				cap = true
				l.downcase!
			end 
			index = alphabet_l.find_index(l)
			index += key
			if index > (alphabet_l.length - 1) #wrap back to beginning
				index -= alphabet_l.length
			end
			#puts "Encryption for #{l} is: #{alphabet_l[index]}"
			if cap
				encrypted << alphabet_l[index].upcase
			else
				encrypted << alphabet_l[index]
			end
		end
	end
	#puts "Caesar Cypher for #{word} is \n #{encrypted.join}"
	encrypted.join
end

 #puts "Enter word to encrypt:"
 #w = gets.chomp
 #puts " Enter key (must be an integer)"
 #k = gets.chomp
 #caesar_cipher(w, k.to_i)