# Write your code here.

def dictionary
  {"hello" => "hi",
  "to" => "2", 
  "too" => "2", 
  "two" => "2",
  "for" => "4", 
  "four" => "4", 
  "be" => "b", 
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(tweet)
  tweet = tweet.split
  tweet.collect! do |word|
    if dictionary.key? ("#{word.downcase}")
      dictionary[word.downcase]
    else 
      word 
    end 
  end 
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |i|
    puts word_substituter(i)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet 
    elsif tweet.length > 140
      word_substituter(tweet)
  end
end 

def shortened_tweet_truncator(tweet)
  if tweet.length > 140 
    selective_tweet_shortener(tweet)
    tweet[0..136] + "..."
    elsif tweet.length <= 140 
    tweet 
  end 
end 

