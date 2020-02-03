class RecipeCard
  attr_accessor :rating

  @@all = []
  def self.all
    @@all
  end 

  def initialize(rating)
    @rating = rating
    @@all << self
  end 
end 