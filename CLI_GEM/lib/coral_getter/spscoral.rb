class SpsCoral

  attr_accessor :name, :price, :availability, :url

  def self.prices
    puts "get prices" #should return prices

    puts <<_DOC
    1.  TJM Fire Cracker
    2.  Nuclear Avenger
    3.  Gastric expanse Monitpora
_DOC


  coral1 = self.new
  coral1.name = "Tjm Fire Cracker"
  coral1.price = "250"
  coral1.availability = " Out of Stock"
  coral1.url = "https://tjmcorals.com/collections/wysiwyg/products/tjm-firecracker-1"

  coral2 = self.new
  coral2.name = "Nuclear Avenger"
  coral2.price = "125"
  coral2.availability = " Out of Stock"
  coral2.url = "https://tjmcorals.com/collections/wysiwyg/products/tjm-firecracker-12"

  [coral1, coral2]

  end
end
