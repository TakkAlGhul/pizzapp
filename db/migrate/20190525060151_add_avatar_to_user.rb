class AddAvatarToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :text, null: true
  end
end
