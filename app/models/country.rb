class Country < ActiveRecord::Base
    belongs_to :pastries
    has_many :recipes, through: :pastries
    has_many :users, through: :pastries

end