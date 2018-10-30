#write your code here
def translate (str)
  vowels = ['a','e','i','o','u']
  alphabet = ('a'..'z').to_a
  consonants = alphabet - vowels
  words = str.split(' ')
  latin_str = ''

  words.each do |word|
    word = word.downcase
    if vowels.include?(word[0])
      latin_str += word + 'ay '
    else
      if word[0] == 'q' && word[1] == 'u'
        latin_str += word[2..word.length-1] + word[0..1] + 'ay '
      elsif consonants.include?(word[1])
        if consonants.include?(word[2]) || word[2] == 'u'
          latin_str += word[3..word.length-1] + word[0..2] + 'ay '
        else
          latin_str += word[2..word.length-1] + word[0..1] + 'ay '
        end
      else
        latin_str += word[1..word.length-1] + word[0] + 'ay '
      end

    end

  end

  #Capital Word Filter
  filtered_latin_str = []
  latin_str.split(' ').each_with_index do |latin_word, i|
    if words[i][0] == words[i][0].upcase
      filtered_latin_str.push(latin_word[0].upcase + latin_word[1..latin_word.length-1])
    else
      filtered_latin_str.push(latin_word)
    end
  end

  filtered_latin_str.join(' ')
end
