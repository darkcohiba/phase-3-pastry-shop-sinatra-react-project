class CreatePastries < ActiveRecord::Migration[6.1]
  def change
    create_table :pastries do |t|
      t.string :photo
      t.string :name
      t.string :description
      t.int :country_id
      t.int :recipe_id
    end
  end
end
