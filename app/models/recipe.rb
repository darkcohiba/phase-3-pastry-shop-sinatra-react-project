class Recipe < ActiveRecord::Base
    belongs_to :country
    belongs_to :pastry
    has_many :recipes
    has_many :users, through: :recipes

    # def self.top_recipe
    #     self.all.order(:rating).first
    # end

end