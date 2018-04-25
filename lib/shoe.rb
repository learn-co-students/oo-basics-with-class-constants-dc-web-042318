class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    brand_tracking(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand_tracking(brand)
    if BRANDS.include?(brand) == false
      BRANDS.push(brand)
    end
  end

end
