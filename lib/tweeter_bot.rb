require 'pry'
require 'dotenv'
require 'twitter'

#binding.pry # On lance PRY au milieu de la méthode

Dotenv.load('.env') # appelle le fichier .env

#puts ENV['TWITTER_API_SECRET'] # récupère les éléments du fichier .env
#puts ENV['BEST_WEBSITE_EVER']
def login_twitter
    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
        config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
    return client
end

#client.update('Mon premier tweet en ruby')