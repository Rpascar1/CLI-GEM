require 'pry'
require "httparty"
require 'Launchy'

class Scraper
extend @@data
extend Menu_Mod

  url1 = "https://tjmcorals.com/collections/sps/products.json?page"
  url2 = "https://tjmcorals.com/collections/sps/products.json?page=2"
  urls = [url1,url2]
  @@data = []
def self.scrape_site(urls)
  page_data = []
  urls.each do |url|
    page_data << HTTParty.get(url)
end

def self.parse_data
  page_data.each do |hash|
    @@data << hash.parsed_response
  end
end
