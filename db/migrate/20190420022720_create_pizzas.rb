class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :menu
      t.text :image
      t.integer :shops_id
      t.integer :calorie 
      t.integer :price

      t.timestamps null: true
    end
  end
end
