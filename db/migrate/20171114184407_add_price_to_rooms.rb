class AddPriceToRooms < ActiveRecord::Migration[5.1]
  def change
    add_monetize :rooms, :price, currency: { default: "BRL" }
  end
end
