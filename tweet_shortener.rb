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
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets_arr)
  tweets_arr.each do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.split(//).count > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).split(//).count > 140
    selective_tweet_shortener(tweet)[0...137] + '...'
  else
    selective_tweet_shortener(tweet)
  end
end

