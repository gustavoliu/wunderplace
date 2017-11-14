class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :address
      t.string :type
      t.string :photos
      t.text :description
      t.string :name
      t.integer :user_id
      t.boolean :published

      t.timestamps
    end
  end
end
