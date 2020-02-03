class User
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end 
  def initialize(name)
    @name = name
    @@all << self
  end 

  def my_recipe_cards
    RecipeCards.all.select {|rc| rc.user == self}
  end 

  def recipes 
    recipe_cards.map {|card| card.recipe}
  end 

  def declare_allergy(ingredent)
    Allergy.new(self, indgredient)
  end 

  def allergens
    Allergy.all.select {|al| al.user == self}.map {|ing| ing.ingredient}
  end 

  def top_three_recipes
    my_recipe_cards.sort_by {|r| r.rating}.reverse.first(3).map {|x| x.recipe}
  end 

end 