require 'pry'
require 'dotenv'

def multiply_by_6(var) #définition d'une méthode multipliant par 6 en 2 étapes
    var = var * 2
    #binding.pry # On lance PRY au milieu de la méthode
    var = var * 3
    return var
end

Dotenv.load('.env') # appelle le fichier .env

puts ENV['TWITTER_API_SECRET'] # récupère les éléments du fichier .env
puts ENV['BEST_WEBSITE_EVER']