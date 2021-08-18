class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.string :price
      t.boolean :is_audio_engineer_include, :default => false
      t.string :discount_percentage
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
