class CreateStudioOccupacies < ActiveRecord::Migration[6.1]
  def change
    create_table :studio_occupacies do |t|
      t.string :max_occupacy

      t.timestamps
    end
  end
end
