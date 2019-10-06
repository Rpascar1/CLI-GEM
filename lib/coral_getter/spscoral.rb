require 'pry'
require "httparty"
require 'Launchy'


class CoralGetter::SpsCoral
  @@data = []
  @@corals = []
  @@three = []
  @@four = []
  @@five = []
    def initialize
      scrape
      @@data
      @@corals
      @@three
      @@four
    end


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


    def one

        @@corals.uniq.each do |attributes|
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
      @@three.clear
        array = []
        input = nil


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
          puts
          puts "------------------------------------------------------------"
          puts " If you would like to see this coral, please type it's complete name."
          puts "To return, enter 'menu' or enter 'exit' to end  session."
          puts



            input = Readline.readline.downcase
          if input == 'menu'
            CoralGetter::CLI.new.call_on_open
          end
          if input == 'exit'
            exit

          end
          if input != 'exit' || input != 'menu'

          @@three.each do|coral|
            if input.downcase == coral[:coralname].downcase
            Launchy.open "#{coral[:url]}"
            print "\e[3J\e[H\e[2J"
            print "\e[3J\e[H\e[2J"
            puts
            puts
            puts "Here is a lexicographical list of all sps coral who's price is $100 dollars or less."
            puts "-----------------------------------------------------------------------------------------------"
            puts
            three
          elsif
              input == nil

            print "\e[3J\e[H\e[2J"
            print "\e[3J\e[H\e[2J"
            puts
            puts
            puts "Here is a lexicographical list of all sps coral who's price is $100 dollars or less."
            puts "-----------------------------------------------------------------------------------------------"
            puts
            three
            end
          end
        end
end

      def four
        @@three.clear

        puts "These corals are out of stock."
        puts "------------------------------------"
        puts
        @@data.each do |tophash|
          tophash["products"].each do |hash|
           @@three <<  {
                        :coralname => hash['title'],
                        :available => hash["variants"][0]["available"]
                       }
                     end

          @@three.each do |coral|
            if coral[:available] != true
            @@five << coral unless @@five.include?(self)
            end
            end
            end

          @@five.uniq.each do |coral|
              puts "#{coral[:coralname]} is ***OUT OF STOCK***."
          end


      end

end
