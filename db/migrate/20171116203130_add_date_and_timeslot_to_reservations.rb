class AddDateAndTimeslotToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :date, :date
    add_column :reservations, :timeslot, :integer
  end
end
