class CreateCatalogs < ActiveRecord::Migration[7.0]
  def change
    create_table :catalogs do |t|
      t.string :seed
      t.string :source
      t.datetime :date_recieved
      t.datetime :expired
      t.integer :amount

      t.timestamps
    end
  end
end
