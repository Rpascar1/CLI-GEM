require 'pry'
require "httparty"
require 'Launchy'


class CoralGetter::SpsCoral
  ################## defs
  extend Menu_Mod
  include @@data
  extend @@three
  include Menu_Mod

  def endline
    puts @@line
    puts "To return, enter 'menu' or enter 'exit' to end your session."
  end
  @@line = "-----------------------------------------------------------------------------------------------"
  @@data = []
  @@corals = []
  @@three = []
  @@four = []
  @@five = []
  def space
    puts @@line
    puts ""
  end
  def clear_and_print
  puts "\e[2J\e[f"
  print "\e[3J\e[H\e[2J"
  end

  #############################################################################
    def initialize
      @@corals
      @@three
      @@four
    end

######################## inst meths ****************************************
    def scrape

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
    puts "Here is the full lexicographical list of available corals."
    space
      @@corals.uniq!
      @@corals.sort_by!{|coral|coral[:coralname]}
      @@corals.each do |attributes|
       attributes[:coralname]
      end
  end

  def two
    puts "Here is a complete list of price brackets sorted from lowest to highest."
    puts @@line
    puts
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
        puts "The current price range of all sps coral is between $#{new_array.min} and $#{new_array.max} dollars."
  end


    def three
    array = []
    input = nil
    puts "Here is a lexicographical list of all sps coral who's price is $100 dollars or less."
    space

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
    
        space
        puts "If you would like to see this coral, please type it's complete name."
        puts "\nTo return, enter 'menu' or enter 'exit' to end  session.\n"

  end


  def four
        puts "These corals are out of stock."
        space
        @@data.each do |tophash|
          tophash["products"].each do |hash|
           @@four <<  {
                        :coralname => hash['title'],
                        :available => hash["variants"][0]["available"]
                       }
                     end

          @@four.each do |coral|
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
