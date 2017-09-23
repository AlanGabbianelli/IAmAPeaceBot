require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_SECRET']
end

HASHTAGS = '#PeaceDay #RobotsForPeace #PeaceHack'.freeze

TWEETS = [
  "You can find peace amidst the storms that threaten you.\nJoseph B. Wirthlin",
  "Share your smile with the world. It\'s a symbol of friendship and peace.\nChristie Brinkley",
  "When the power of love overcomes the love of power the world will know peace.\nJimi Hendrix",
  "For every minute you remain angry, you give up sixty seconds of peace of mind.\nRalph Waldo Emerson",
  "Those who are free of resentful thoughts surely find peace.\nBuddha",
  "I can have peace of mind only when I forgive rather than judge.\nGerald Jampolsky",
  "Courageous people do not fear forgiving, for the sake of peace.\nNelson Mandela",
  "Observe good faith and justice toward all nations. Cultivate peace and harmony with all.\nGeorge Washington",
  "Peace is a journey of a thousand miles and it must be taken one step at a time.\nLyndon B. Johnson",
  "Better than a thousand hollow words, is one word that brings peace.\nBuddha",
  "We can never obtain peace in the outer world until we make peace with ourselves.\nDalai Lama",
  "Our peace shall stand as firm as rocky mountains.\nWilliam Shakespeare",
  "Every breath we take, every step we make, can be filled with peace, joy and serenity.\nThich Nhat Hanh",
  "Where ignorance is our master, there is no possibility of real peace.\nDalai Lama",
  "If you want peace, you don\'t talk to your friends. You talk to your enemies.\nDesmond Tutu",
  "Peace and justice are two sides of the same coin.\nDwight D. Eisenhower",
  "Peace of mind comes from not wanting to change others.\nGerald Jampolsky",
  "You cannot shake hands with a clenched fist.\nIndira Gandhi",
  "Tolerance is a virtue that depends upon peace and strength.\nCharles Lindbergh"
].freeze

client.update("#{TWEETS.sample}\n#{HASHTAGS}")
