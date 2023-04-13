class CreateSeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :seeds do |t|
      t.string :type
      t.string :name
      t.string :latin_name
      t.datetime :start_date
      t.datetime :transfer_date
      t.datetime :harvest_date
      t.boolean :direct_sow, default: false
      t.boolean :start_inside, default: false
      t.boolean :annual, default: false
      t.boolean :perrenial, default: false
      t.boolean :determinate, default: false
      t.boolean :indeterminate, default: false

      t.timestamps
    end
  end
end
