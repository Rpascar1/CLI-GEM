require 'httparty'
require 'launchy'
require 'readline'


class CoralGetter::CLI
  extend Menu_Mod
  include Menu_Mod

  def call_on_open
    scrape
   puts "Welcome! To see current coral information enter the corresponding number to one of the following options.\nYou can return to this menu at anytime by typing menue./n If you would like to end the session, please type exit."
   puts
   puts
   user_menu
   goodbye
  end

  url1 = "https://tjmcorals.com/collections/sps/products.json?page"
  url2 = "https://tjmcorals.com/collections/sps/products.json?page=2"
  urls = [url1,url2]

  def scrape
    Scraper.scrape_site(urls)
  end



end
