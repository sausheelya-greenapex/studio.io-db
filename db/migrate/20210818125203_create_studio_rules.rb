class CreateStudioRules < ActiveRecord::Migration[6.1]
  def change
    create_table :studio_rules do |t|
      t.string :rule
      t.string :cancellation_policy
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
