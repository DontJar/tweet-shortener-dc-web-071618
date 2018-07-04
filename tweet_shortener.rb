require 'pry'

def dictionary
dictionary = {
  'hello'=>'hi',
  'to'=>'2',
  'two'=>'2',
  'too'=>'2',
  'for'=>'4',
  'For'=>'4',
  'four'=>'4',
  'be'=>'b',
  'you'=>'u',
  'at'=>"@",
  'and'=>"&"
}
end

def word_substituter (tweet)
  # trigger_words = dictionary.keys
  tweet_array = tweet.split(" ")
  new_tweet = []
  tweet_array.each do |word|
    if dictionary.include?(word)
      new_tweet.push(dictionary[word])
    else new_tweet.push(word)
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener (lots_of_tweets)
  new_full_tweet = []

  lots_of_tweets.each do |each_tweet|
    new_tweet = []
    tweet_words = each_tweet.split(" ")
    tweet_words.each do |word|
      if dictionary.include?(word)
        new_tweet.push(dictionary[word])
      else new_tweet.push(word)
      end
    new_full_tweet = new_tweet.join(" ")
    end
  puts new_full_tweet
  end
end

def selective_tweet_shortener (maybe_long_tweet)
  if maybe_long_tweet.size <= 140
    maybe_long_tweet
  else
    tweet_array = maybe_long_tweet.split(" ")
    new_tweet = []
    tweet_array.each do |word|
      if dictionary.include?(word)
        new_tweet.push(dictionary[word])
      else new_tweet.push(word)
      end
    end
    new_tweet.join(" ")
  end
end

def shortened_tweet_truncator (tweet_too_long)
  if tweet_too_long.size <= 140
    tweet_too_long
  else
    tweet_array = tweet_too_long.split(" ")
    new_tweet = []
    tweet_array.each do |word|
      if dictionary.include?(word)
        new_tweet.push(dictionary[word])
      else new_tweet.push(word)
      end
    end
    new_tweet.join(" ")[0..136]<<"..."
  end
end
