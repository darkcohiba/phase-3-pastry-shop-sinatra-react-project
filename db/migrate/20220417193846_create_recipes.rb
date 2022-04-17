class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.int :author_id
      t.string :description
      t.int :prep_time
      t.int :cook_time
      t.int :total_time
      t.string :recipe_ingredients
      t.string :recipe_instructions
    end
  end
end
