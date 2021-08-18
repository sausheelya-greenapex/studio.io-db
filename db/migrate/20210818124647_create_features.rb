class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :amenities
      t.string :main_equipment
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
