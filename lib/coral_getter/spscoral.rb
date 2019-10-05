require 'pry'
require "httparty"


class CoralGetter::SpsCoral
  @@data = nil
  @@corals = []
  @@three = []
    def initialize
      scrape
      @@data
      @@corals
      @@three
    end

#@@all = []
    def scrape
      url = "https://tjmcorals.com/collections/sps/products.json"
      page_data = HTTParty.get(url)

      @@data = page_data.parsed_response

        @@data["products"].each do |hash|
          @@corals << {:coralname => hash['title'],
             :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}",
             :price => hash["variants"][0]["price"],
             :available => hash["variants"][0]["available"],
             :species => hash["product_type"]
            }

        end
    end
          # puts "Enter 1 for a full list of availble species by street name."
    def one
        @@data["products"].each do |hash|
          one = hash['title']
          puts = "Full list of available corals."
            puts one
        end
    end

    def two
        array = []
        i = 1
        @@data["products"].each do |hash|
          array << hash["variants"][0]["price"].to_i
        end
          new_array = array.uniq!
          new_array = new_array.sort!{|min,max| min <=> max}
          new_array.each do |line|
            puts "#{i}. #{line}"
            i += 1
          end
    end


    def three
      array = []

        @@data["products"].each do |hash|
          @@three << {
                      :coralname => hash['title'],
                      :price => hash["variants"][0]["price"].to_i
                     }
        end
            @@three.each do |coral|
            if coral[:price].to_i <= 100
              array << "#{coral[:coralname]} - #{coral[:price]}"
              end
              array.uniq!
              array = array.sort!{|min,max| min <=> max}



          end
          puts array
      end

            #   array = []
            #   @@corals.each do |coral|
            #     if coral[:price]["variants"][0]["price"].to_i <= 100
            #       array << coral[:price] => hash["variants"][0]["price"]
            #     end
            #   end


              # @@corals << @coral = {:coralname => hash['title'],
              #         :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}",
              #         :price => hash["variants"][0]["price"],
              #         :available => hash["variants"][0]["available"],
              #         :species => hash["product_type"]
              #        }
              #



            def self.all_corals
              puts @@corals
            end
          # puts

          # puts
          # puts "3 Complete list of names and prices of all stock."
          # puts
          # puts "4 'Bargain Bin' - all corals under $100."




   # name = @@all["products"][0]["title"]
   # urlname = @@all["products"][0]["handle"]
   # url = "https://tjmcorals.com/collections/sps/products/" + urlname
   # price = @@all["products"][0]["variants"][0]["price"]
   # available = @@all["products"][0]["variants"][0]["available"]
   # # species = @@all["products"][0]["product_type"]
   # s
   # puts "Please make a selection:"
   # puts


end
