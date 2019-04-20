class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :pizza_id
      t.integer :rate
      t.string :nickname
      t.text :text

      t.timestamps
    end
  end
end
