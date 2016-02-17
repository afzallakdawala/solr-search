class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :per_day_rent
      t.decimal :rating, precision: 3, scale: 2
      t.integer :user_id
      t.string :category
      t.integer :status
      t.decimal :score, precision: 4, scale: 2
      t.string :location
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
