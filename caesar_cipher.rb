def caesar_cipher(text, shift)
	encrypted_text = []
	letters = text.split("")
	letters.each do |letter|
		if letter.ord >=97 && letter.ord <=122
			encrypted_letter = letter.ord + (shift % 26)
			if encrypted_letter > 122
				encrypted_letter -= 26
			end
		
		elsif letter.ord >=65 && letter.ord <=90
			encrypted_letter = letter.ord + (shift % 26)
			if encrypted_letter > 90
				encrypted_letter -= 26
			end
		else
			encrypted_letter = letter.ord
		end
		encrypted_text.push(encrypted_letter.chr)

	end
	puts encrypted_text.join



end
puts "xyz, 3"
caesar_cipher("xyz", 3)
puts "XYZ, 88"
caesar_cipher("XYZ", 88)
puts "abc! ABC. xyz? XYZ, 18"
caesar_cipher("abc! ABC. xyz? XYZ", 18)
