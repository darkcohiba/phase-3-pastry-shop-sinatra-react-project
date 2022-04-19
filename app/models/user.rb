class User < ActiveRecord::Base
    has_many :recipes
    has_many :pastries, through: :recipes
    has_many :countries, through: :recipes

    def all_recipes
        self.recipes.all
    end
end