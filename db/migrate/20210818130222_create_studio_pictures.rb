class CreateStudioPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :studio_pictures do |t|
      t.string :photos
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
