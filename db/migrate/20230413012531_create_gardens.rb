class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :zone
      t.integer :zip

      t.timestamps
    end
  end
end
