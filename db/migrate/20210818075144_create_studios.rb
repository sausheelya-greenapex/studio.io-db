class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :details
      t.string :studio_hours
      t.string :past_client
      t.string :audio_samples
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
