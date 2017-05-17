# Write your code here.

def word_substituter(tweet)
  dictionary = {"hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"}
    answer = []
    tweetArray = tweet.split(" ")
    tweetArray.collect do |x|
      dictionary.each do |n, m|
        if x.downcase == n
          x = m
        else
          x = x
        end
      end
      answer.push(x)
    end
    answer.join(" ")
end
tweet = "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. For real, u guys. For real."
word_substituter(tweet)


def selective_tweet_shortener(tweet)
  if tweet.length < 140
    puts tweet
  else
    tweet = word_substituter(tweet)
  end
  return tweet
end

def shortened_tweet_truncator(tweet)
  answer = ""
  if tweet.length > 140
    answer = tweet[0..136] + '...'
  else
    answer = tweet
  end
  answer
end

def bulk_tweet_shortener(tweet)

  tweet.each do |x|
    puts word_substituter(x)
  end

end
