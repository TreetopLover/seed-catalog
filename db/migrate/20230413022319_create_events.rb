class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.datetime :time
      t.string :title
      t.string :description
      t.boolean :universal
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
