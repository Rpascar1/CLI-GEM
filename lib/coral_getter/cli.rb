require 'httparty'
require 'launchy'
require 'readline'


class CoralGetter::CLI



  def user_menu

      Coral.new.coral_p

      puts
      puts
      puts "Please make a selection:"
      puts
      puts "1 For a full list of species street names."
      puts
      puts "2 See the price range of all available stock."
      puts
      puts "3 Complete list of names and prices of all stock."
      puts
      puts "4 'Bargain Bin' - all corals under $100."
      puts
      puts "Please enter your selection, clear, or exit."
      puts
      puts
      puts
      puts
      puts
      puts "Secret Function - Do a barrel roll Fox, N1000000 version only. If you know, you know."

      input = nil
      secretanswer = nil
      while input != "exit"
        input = Readline.readline.downcase
        case input
        when "1"
          puts "SPS NAMES:"
          @corals = CoralGetter::SpsCoral.coral
          @corals.each.with_index(1) do |coral, i|
            puts "#{i}. #{coral.name} - #{coral.price} - #{coral.availability}"
          end
        when "2"
          range_of_prices
        when "3"
          list_names_with_prices
        when "4"
          quantity
        when "Secret Function".downcase
              Fox.new.secret_answer
        when ""
          puts "Invalid entry, please try again."
        when "menu"
          input = "exit"
          print `clear`
          CoralGetter::CLI.new.user_menu
        when "clear"
          input = "exit"
          print `clear`
          CoralGetter::CLI.new.user_menu
        when "self-destruct"
            clear
            print "\e[3J\e[H\e[2J"
            Ending.new.ending_secret
            clear
            print "\e[3J\e[H\e[2J"
            input = "exit"
         else
              if input.to_i > 4
                puts "Invalid option. Please make another selection."
              else
                unless input == 'exit'
                  puts "Invalid option. Please make another selection."
              end
          end
        end
      end
    end


  def range_of_prices
    puts "price range"
  end

  def list_names_with_prices
    puts "name and price"
  end

  def quantity
    puts "quant"
  end

  def price_range(amount)
    puts "range selections"
  end

  def goodbye
    puts "Session Exited"
  end

  def clear
   puts "\e[2J\e[f"
  end

  def call_on_open
   puts
   puts
   puts "Welcome! To see current coral information enter the corresponding number to one of the following options.\nYou can return to this menu at anytime by typing menue./n If you would like to end the session, please type exit."
   puts
   puts
   user_menu
   goodbye
  end

  def harvest_url
   https://tjmcorals.com/collections/all
   @prices = CoralGetter::SpsCoral.prices
  end


end
