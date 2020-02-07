class Recipe 

    attr_accessor :ingredients

    @@all = []

    def initialize(ingredients)
        @ingredients = ingredients
        @@all << self
    end

    def self.all 
        @@all
    end


    def self.most_popular
        obj = RecipeCard.all.collect{|rec| rec.name }.max_by {|i| all.count(i)}
        obj.name
    end

    def users
        recipes_in_cards = RecipeCard.all.select do |recipe| 
            recipe.recipe == self
        end
        recipes_in_cards.collect do |recipe|
            recipe.user
        end
    end

    def allergens
        array1 = self.ingredients
        total_ingredients = Allergy.all.collect do |allergen|
                allergen.ingredient.ingredient_name
        end
        array3 = array1 + total_ingredients
        array3.detect{|x| array3.count(x) > 1}
    end
    


  
end