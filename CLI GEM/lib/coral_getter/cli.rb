
#CLI CONTROLLER
class CoralGetter::CLI

  def call_on_open
    puts "Welcome Human. Exotic Small Polyp Stony coral specimen information awaits you."
    puts
    puts
    user_menu
    goodbye
  end

  def harvest_url
    https://tjmcorals.com/collections/all
    @prices = CoralGetter::SpsCoral.prices
  end

  def user_menu
      puts "Please enter the integer value of your chemically generated selection || type 'exit' to end our conversation."
      puts
      puts "1 Species name lists are available here"
      puts
      puts "2 Human, to see a valuation range of life in fiat currency please choose this selection."
      puts
      puts "3 To see exact genetic strains at todays market rates enter 3."
      puts
      puts "4 To see specimen that are less than 100 credits and nearing death, enter 4."
      puts
      puts "Secret - Do a barrel roll Fox 1000000 version"
      puts
      puts "Press any other key to self destruct."
      puts
      puts " Please enter selection..."

      input = nil
      while input != "exit"
        input = gets.strip.downcase
        case input
        when "1"
          all_sps_names
        when "2"
          range_of_prices
        when "3"
          list_names_with_prices
        when "4"
          quantity
        when "5"
          puts "You are self described as poor, Human. Enter your 'budget' for the living art which has infinite intrisic value."
          input = gets.strip.downcase
          if input < 100
            price_range
          end
        when "ZZ".downcase || "RR".downcase
          do_a_barrel_roll
        else
              Ending.new.ending_secret
              input = "exit"
            end
          end
        end


  def all_sps_names
    puts "sps names"
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
    puts "The biosphere has collapsed."
  end

  def do_a_barrel_roll
      puts "Level up Fox. You found my first program ever."
      puts "https://twitter.com/ProteusLinnaeus/status/1142800917395320832?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1142800917395320832&ref_url=https%3A%2F%2Fpublish.twitter.com%2F%3Fquery%3Dhttps%253A%252F%252Ftwitter.com%252FProteusLinnaeus%252Fstatus%252F1142800917395320832%26widget%3DTweet"
      puts "Use 'exit' Human."
  end

end

#test 

# user types show corals

# list SPS prices
#
# list SPS names
#
# list quantity -  if a thing for limited runs should have number
#
# list how many in 3 price ranges ranges
#  pick price range
