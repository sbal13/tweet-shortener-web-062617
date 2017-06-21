# Write your code here.

def word_substituter(tweet)
  subs = {
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

  tweet.split(" ").collect{|word| subs[word.downcase] != nil ? subs[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..136] + "..."
    else
      word_substituter(tweet)
    end
  else
    tweet
  end
end
