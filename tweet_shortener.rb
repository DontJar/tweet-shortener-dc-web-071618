require 'pry'

def dictionary
dictionary = {
  'hello'=>'hi',
  'to'=>'2',
  'two'=>'2',
  'too'=>'2',
  'for'=>'4',
  'four'=>'4',
  'be'=>'b',
  'you'=>'u',
  'at'=>"@",
  'and'=>"&"
}
end

def word_substituter (tweet)
  trigger_words = dictionary.keys
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

def bulk_tweet_shortener (twitters)
  trigger_words = dictionary.keys
  new_tweets_together = []
  twitters.each do |full_tweet|
    new_tweet = []
    tweet_array = full_tweet.split(" ")
    tweet_array.each do |word|
      if dictionary.include?(word)
        new_tweet.push(dictionary[word])
      else new_tweet.push(word)
      end
# binding.pry
    new_tweet.join(" ")
    end
    puts new_tweet
    # new_tweets_together.push(new_tweet)
    # puts new_tweets_together.join(" ")
# binding.pry
    # new_tweets_together.join(" ")

  # end
    # new_tweets_together.each do |puts_me|
      # puts puts_me
    # end
end
