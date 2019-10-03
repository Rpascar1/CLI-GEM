class SpsCoral

  attr_accessor :name, :price, :availability, :url

  def self.coral
    self.scrape_corals
  end

  def self.scrape_corals
#scrape tjm return coral based on data
  corals = []
# CoralGetter::SpsCoral.new("https://tjmcorals.com/collections/sps")
#     coral_info = []
#   coral = self.new
#   coral.name = "Tjm Fire Cracker"
#   coral.price = "250"
#   coral.availability = " Out of Stock"
#   coral.url = "https://tjmcorals.com/collections/wysiwyg/products/tjm-firecracker-1"



  end
end


# for i in range(1, 907):     #Number of pages plus one
#         url = "http://www.pga.com/golf-courses/search?page={}&searchbox=Course+Name&searchbox_zip=ZIP&distance=50&price_range=0&course_type=both&has_events=0".format(i)
#         r = requests.get(url)
#         soup = BeautifulSoup(r.content, "html5lib")   #Can use whichever parser you prefer
