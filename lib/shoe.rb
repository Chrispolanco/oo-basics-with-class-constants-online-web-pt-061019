class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  array= []
  BRANDS = []

  def initialize(brand)
    @brand = brand
    array << brand 
    
    array.uniq.each do |brand|
      Show.new(brand)
      BRANDS << brand 
    end 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  
end