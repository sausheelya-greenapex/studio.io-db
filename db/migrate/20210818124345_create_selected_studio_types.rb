class CreateSelectedStudioTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :selected_studio_types do |t|
      t.references :studio, null: false, foreign_key: true
      t.references :studio_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
