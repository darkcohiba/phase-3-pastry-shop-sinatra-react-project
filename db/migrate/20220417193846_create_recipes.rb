class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :pastry_id
      t.string :name
      t.string :user_id
      t.integer :rating
      t.string :description
      t.string :prep_time
      t.string :bake_time
      t.string :total_time
      t.string :recipe_ingredients
      t.string :recipe_instructions
    end
  end
end
