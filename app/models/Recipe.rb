# Recipe.all should return all of the recipe instances
# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# Recipe#users should return the user instances who have recipe cards with this recipe
# Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
# #
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe


class Recipe

attr_reader :name

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def self.most_popular
      recipes = RecipeCard.all.map {|card| card.recipe}
      recipes_uniq = recipes.uniq
      recipes_uniq.max_by{|recipe| recipes.count(recipe)}



  end
  def users

    array = RecipeCard.all.select{|key| key.recipe == self}
    array.map { |e| e.users }

  end
  def ingredients
    array = RecipeIngredient.all.select{|key| key.recipe == self}
    array.map { |e| e.ingredient }

  end

  def add_ingredients(array_ingredients)
     array_ingredients.each {|i| RecipeIngredient.new(i, self)}
  end

  def allergens
    #return ingredients that are allergies
    array = Allergy.all.map{|key| key.ingredient}
    return array
  end
end
