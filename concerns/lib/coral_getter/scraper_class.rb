require 'pry'
require "httparty"
require 'Launchy'

class Scraper
extend @@data
extend Menu_Mod

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
