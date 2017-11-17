class RemoveStartAndEndTimeFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :start_time, :datetime
    remove_column :reservations, :end_time, :datetime
  end
end
