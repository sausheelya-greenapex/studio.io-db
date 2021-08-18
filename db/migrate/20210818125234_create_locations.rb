class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :apartment
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
