class CreateAdditionalServices < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_services do |t|
      t.string :session_audio_price
      t.boolean :is_enable_discount, :default => false
      t.references :price, null: false, foreign_key: true
      t.references :studio, null: false, foreign_key: true
      t.string :mixing_service_price
      t.string :other_production_price

      t.timestamps
    end
  end
end
