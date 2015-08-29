def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(sentence)
  dictionary.each do |long_word, shortened_word|
    sentence = sentence.gsub(" #{long_word} ", " #{shortened_word} ")
    sentence = sentence.gsub(" #{long_word.capitalize} ", " #{shortened_word} ")
  end
  sentence
end

def bulk_tweet_shortener(array_of_sentences)
  array_of_sentences.map {|sentence| puts word_substituter(sentence)}
end

def selective_tweet_shortener(sentence)
  sentence.length > 140 ? sentence[0..139] : sentence
end

def shortened_tweet_truncator(sentence)
  selective_tweet_shortener(word_substituter(sentence))
end
