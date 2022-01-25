class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.integer :category
      t.string :brand
      t.string :location
      t.integer :condition
      t.boolean :availability
      t.integer :renting_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
