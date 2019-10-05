require 'pry'
require "httparty"


class CoralGetter::SpsCoral

  @@all = nil
#@@all = []
def self.scrape
  url = "https://tjmcorals.com/collections/sps/products.json"
  page_data = HTTParty.get(url)
  corals = []
   @@all = page_data.parsed_response
   name = @@all["products"][0]["title"]
   urlname = @@all["products"][0]["handle"]
   url = "https://tjmcorals.com/collections/sps/products/" + urlname
   price = @@all["products"][0]["variants"][0]["price"]
   available = @@all["products"][0]["variants"][0]["available"]
   species = @@all["products"][0]["product_type"]

@@all["products"].each do |hash|

   corals << coral = {:coralname => hash['title'],
             :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}",
             :price => hash["variants"][0]["price"],
             :available => hash["variants"][0]["available"],
             :species => hash["product_type"]
            }


end

end






end
