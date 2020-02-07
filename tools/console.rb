require_relative '../config/environment.rb'

scrambled_eggs_recipe = Recipe.new(["Eggs", "Pepper"])
pasta_recipe = Recipe.new(["Noodles", "Sauce"])

gordon = User.new("Gordon")
guy = User.new("Guy")
sam = User.new("Sam")

eggs = Ingredient.new("Eggs")
pepper = Ingredient.new("Pepper")
noodles = Ingredient.new("Noodles")
sauce = Ingredient.new("Sauce")

pepper_allergy = Allergy.new(gordon, pepper)
sauce_allergy = Allergy.new(guy, sauce)

pepper_pasta = RecipeIngredient.new("Pepper Pasta", pasta_recipe, pepper)
sauce_eggs = RecipeIngredient.new("Sauce Eggs", scrambled_eggs_recipe, sauce)

pasta_card = RecipeCard.new(gordon, pasta_recipe, "02/03/2020", 5, pepper_pasta)
scrambled_eggs_card = RecipeCard.new(guy, scrambled_eggs_recipe, "02/02/2020", 4, sauce_eggs)
pasta_card2 = RecipeCard.new(sam, pasta_recipe, "02/02/2020", 3, pepper_pasta)

binding.pry 
0