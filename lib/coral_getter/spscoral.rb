require 'pry'

class CoralGetter::SpsCoral

attr_accessor :name, :name_array, :price, :availability, :url, :coral_urls

@@coral_urls = []

#CoralGetter::SpsCoral.scrape_pages
  def self.scrape_pages
    self.scrape_TJMcorals_extra_page_links
      @@coral_urls.each do |url|
      open_page = Nokogiri::HTML(open(url))
         coral_attribute_array= []
        open_page.css("div.product-item__link-wrapper").each do |corals|
          coral_attribute_array << coral = {
                 :product_url => open_page.css("a.product-item__link").attribute("href").value,
               #:name => open_page.css("p.product-item__title").text[0..13],
               :name => open_page.css("div.product-item__title").text,
               :price => open_page.css("span visually-hidden").text.strip

             }
#shopify-section-collection-template >
binding.pry

        end
      end
    end


        def self.scrape_TJMcorals_extra_page_links
          url = "https://tjmcorals.com/collections/sps"
          @@coral_urls << url
          doc = Nokogiri::HTML(open(url))
          doc1 = doc.css(".page a")
          if doc1
            doc1 = doc1.map do |page|
              page.attribute("href").value
              doc3 =("https://tjmcorals.com/collections/sps?page="+page)

              @@coral_urls << doc3
                end
              end
            end
          end







            # def self.coral
            #   self.scrape_corals
            #   self.scrape_TJMcorals_extra_page_links
            # end

#
#   def self.scrape_corals
# #scrape tjm return coral based on data
#   @@corals = []
#
#   corals << self.scrape_TJMcorals
#
# end
#
#
# # if span = next  - stop
#
#



#CoralGetter::SpsCoral.coral
# =>


#
# #doc.css(".student-card").each do |student|
#         students << student = {
#           :name => student.css("h4.student-name").text,
#           :location => student.css("p.student-location").text,
#           :profile_url => student.css("a").attribute("href").value
#           }
