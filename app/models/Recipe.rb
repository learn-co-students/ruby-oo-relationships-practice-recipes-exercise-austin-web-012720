class Recipe
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end 
  def initialize(name)
    @name = name
    @@all << self
  end 

  def self.most_popular
    # loop through Recipe.all
    # compare to RecipeCard.all
    # looking for matching recipes
    # may_by will return the array with
    # highest element count
    Recipe.all.max_by do |recipe|
      RceipeCard.all.select do |card|
        card.recipe == recipe
      end.count
    end 
  end 

  def find_users
    # return users that have this recipe
    # loop through RecipeCard.all to find
    # this recipe
    RecipeCard.all.select {|rcard| rcard.recipe == self}.map {|card| card.user}
  end 

  def find_ingredients
    # return ingredients that are in this recipe
    # loop through RecipeIngredient.all to find
    # the ingredients to this recipe
    RecipeIngredient.all.select {|ri| ri.recipe == self}.map {|ing| ing.ingredient}
  end 

  def add_ingredients(ingredients)
    ingredients.each {|ing| RecipeIngredient.new(self, ingredients)}
  end 

end 