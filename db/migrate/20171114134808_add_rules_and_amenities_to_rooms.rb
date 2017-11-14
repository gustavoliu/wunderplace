class AddRulesAndAmenitiesToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :air_conditioning, :boolean
    add_column :rooms, :secretary, :boolean
    add_column :rooms, :psychology_couch, :boolean
    add_column :rooms, :cleaning, :boolean
    add_column :rooms, :smoking_allowed, :boolean
  end
end
