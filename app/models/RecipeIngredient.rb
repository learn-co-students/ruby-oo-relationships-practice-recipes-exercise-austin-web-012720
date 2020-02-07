class RecipeIngredient

    @@all = []

    attr_accessor :recipe, :ingredient, :name

    def initialize(name, recipe, ingredient)
        @name = name
        @recipe = recipe 
        @ingredient = ingredient 
        @@all << self
    end

    def self.all 
        @@all
    end

    def show_ingredient 
        self.ingredient
    end

    def show_recipe 
        self.recipe
    end

end