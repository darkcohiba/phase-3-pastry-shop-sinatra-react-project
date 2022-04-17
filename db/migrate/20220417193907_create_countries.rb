class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :pastries do |t|
      t.string :photo
      t.string :name
      t.string :description
    end
  end
end
