def substrings(words, dictionary)
  word_count = Hash.new(0)

  def update_tracker(word_to_add, word_count)
    if word_count.key?(word_to_add)
      word_count[word_to_add] += 1
    else
      word_count[word_to_add] = 1
    end
    word_count
  end

  
  words.downcase.split(" ").each do | word |
    dictionary.each do | d_word |
      #Strict comparison if word lengths are equal. 
      if d_word.length == word.length
        if d_word == word
          word_count = update_tracker(word, word_count)
        end
      elsif word.length > d_word.length 
        for i in 0..(word.length - d_word.length) do
          if word[i..(i + d_word.length - 1)] == d_word
            word_count = update_tracker(d_word, word_count)
          end
        end
      end
    end
  end
  word_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)

















substrings("Hello there", ["a", "b"])

