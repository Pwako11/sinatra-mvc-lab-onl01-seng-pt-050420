class PigLatinizer
  attr_reader :text

  def initialize(text)
      @text = text.downcase
  end

  def converter
		new_word = word.downcase.split("")
		updated_array = new_word.dup #duplicates new_word
		vowel_array = ["a","e","i","o","u"]
		new_word.each do |letter|
			if vowel_array.include?(letter) == false
				updated_array << letter
				updated_array.shift
				#puts updated_array.inspect
				#updated_array
			else
				updated_array.push << "ay"
				break
			end
		end
		updated_array.join
  end

end 
