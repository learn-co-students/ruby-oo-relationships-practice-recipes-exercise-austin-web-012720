class RecipeCard

    attr_accessor :user, :recipe, :date, :rating, :name

    @@all = []

    def initialize(user, recipe, date, rating, name)
        @user = user
        @recipe = recipe
        @date = date 
        @rating = rating
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end