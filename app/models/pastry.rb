class Pastry < ActiveRecord::Base
    has_many :recipes
    has_many :countries
    has_many :users, through: :recipes



end