
def get_subword(word,number)
	if word.length.to_i < number.to_i
	 return false
	end
	words = word.split(//).combination(number.to_i)

	 subwords = []
	 puts "Following subword is made with combination of #{word}"
	 words.each do |sw|
	   sword =  sw.to_s.gsub(/\s|"|'/, '')
	   subword = sword.to_s.gsub(/\s|,|'/, '').delete('[]')
	   subwords << subword
	 end
	subwords.uniq.each do |sws|
         puts sws
         puts ""
	end
         puts "Total subword is #{subwords.uniq.count}"
end
def get_input
	puts "Enter Word for subword"  
	STDOUT.flush  
	word_input = gets.chomp.downcase  
	until  word_input.match(/^[a-z]|[A-Z][" "]+$/)
	 puts "Illegal character in word"
	 puts "Please Enter Word for subword Again" 
	 STDOUT.flush  
	 word_input = gets.chomp.downcase
	end
	until word_input.length < 20 
	 puts "Word longer than 20 characters"
	 puts "Please Enter word for subword Again" 
	 STDOUT.flush  
	 word_input = gets.chomp.downcase
	end 
	word = word_input.gsub(/\s+/, "")
	puts "The Word is #{word} "


	puts "Enter lenght of subword"  
	STDOUT.flush  
	number = gets.chomp  
	 until  number.match(/^(\d)+$/)
		puts "Illegal character in number" 
		puts "Please Enter length of subword again"  
		STDOUT.flush  
		number = gets.chomp
	 end 
	until number.to_i < word.length.to_i
	  puts "Number greater than length of word"
	  puts "Please Enter length of subword again"   
	  STDOUT.flush  
	  number = gets.chomp
	end
	puts "The number is #{number} "
        get_subword(word,number)
end
puts "Please press enter  and for end write EOF"
#STDOUT.flush  
start_end = gets.chomp  
until (start_end == "EOF")
 

  get_input

 puts "do you want to conti. if yes Press Enter and for end this enter 'EOF'"
 start_end = gets.chomp
end

