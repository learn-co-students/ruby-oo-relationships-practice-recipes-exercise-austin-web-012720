class User

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    array = RecipeCard.all.select{|i| i.user == self}
    array_of_recipes = array.collect{|k| k.recipe}
    return array_of_recipes

  end

  def add_recipe_card(date, rating, recipe_int)
    RecipeCard.new(self, date, rating, recipe_int)
  end
    def declare_allergy(ingredient)
      Allergy.new(self, ingredient)
    end
    def allergens
      array = Allergy.all.select{|i| i.user == self}
      array.each{|i| puts i.ingredient}
    end

    def top_three_recipes
      array = RecipeCard.all.select{|i| i.user == self}
      ratings_array = array.collect{|k| k.rating}
      ratings_array.max(3)

    end
    def most_recent_recipe
      self.recipes[-1]

    end
end
