class Ingredient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self

  end
  def self.all
    @@all

  end

  def self.most_common_allergen
    allergen_rec = Allergy.all.map {|allergy| allergy.ingredient}
    allergens_uniq = allergens_rec.uniq
    allergens_uniq.max_by{|i| allergens_rec.count(i)}

  end

end
