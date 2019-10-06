require 'pry'
require "httparty"
require 'Launchy'


class CoralGetter::SpsCoral
  @@data = []
  @@corals = []
  @@three = []
  @@four = []
    def initialize
      scrape
      @@data
      @@corals
      @@three
      @@four
    end

#@@all = []
    def scrape
      url1 = "https://tjmcorals.com/collections/sps/products.json?page"
      url2 = "https://tjmcorals.com/collections/sps/products.json?page=2"
      urls = [url1,url2]
      page_data = []
        urls.each do |url|
          page_data << HTTParty.get(url)
        end
        page_data.each do |hash|
          @@data << hash.parsed_response

        end

        @@data.each do |tophash|
          tophash["products"].each do |hash|
            @@corals << {
              :coralname => hash['title'],
              :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}",
              :price => hash["variants"][0]["price"],
              :available => hash["variants"][0]["available"],
              :species => hash["product_type"]
              }
            end
          end
        end


          # puts "Enter 1 for a full list of availble species by street name."
    def one

        @@corals.each do |attributes|
        puts attributes[:coralname]

        puts = "Full list of available corals."
    end

  end

    def two
        array = []
        i = 1
        @@data.each do |tophash|
        tophash["products"].each do |hash|
          array << hash["variants"][0]["price"].to_i
        end
        end
          new_array = array.uniq!
          new_array = new_array.sort!{|min,max| min <=> max}
          new_array.each do |line|
            puts "#{i}. #{line}"
            i += 1
          end
          puts
          puts

            puts "The current price range of all sps coral is between $#{new_array.min} and $#{new_array.max} dollars."

    end


    def three

      array = []

      @@data.each do |tophash|
      tophash["products"].each do |hash|
          @@three << {
                      :coralname => hash['title'],
                      :price => hash["variants"][0]["price"].to_i,
                      :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}"
                     }
        end

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


              def four
                input = nil
                while input != 'exit'
                  input = Readline.readline.downcase
                  @@data.each do |tophash|
                    tophash["products"].each do |hash|
                      @@four << {
                              :coralname => hash['title'],
                              :price => hash["variants"][0]["price"].to_i,
                              :url => "https://tjmcorals.com/collections/sps/products/#{hash['handle']}"
                             }
                           end
                           @@four.each do|coral|
                             if input.downcase == coral[:coralname].downcase
                               Launchy.open "#{coral[:url]}"
                             end

                           end
                         end
                end
                puts ""
              end


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
