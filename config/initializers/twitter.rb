Twitter.configure do |config|
  config.consumer_key = JESTER_CFG[:twitter_consumer_token]
  config.consumer_secret = JESTER_CFG[:twitter_consumer_secret]
  config.oauth_token = JESTER_CFG[:twitter_access_token]
  config.oauth_token_secret = JESTER_CFG[:twitter_access_secret]
end