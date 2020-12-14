class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :uuid
      t.string :name
      t.string :state
      t.string :country
      t.jsonb :coord

      t.timestamps
    end
  end
end
