class Book
  attr_reader :title
  @@no_cap_words = ['in','the','a','of','and','an']
  def title=(book_title)
    book_title =  book_title.split(' ')
    book_title.map! do |word|
      if !@@no_cap_words.include?(word) || word == book_title[0]
        #if word is number don't capitalize
        if word == word.to_i.to_s
          word
        else
          word.capitalize!
        end
      else
        word
      end
    end
    @title = book_title.join(' ')
  end
end
