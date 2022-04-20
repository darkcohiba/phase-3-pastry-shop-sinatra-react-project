class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :flag
      t.string :name
      t.string :capital_city
    end
  end
end
