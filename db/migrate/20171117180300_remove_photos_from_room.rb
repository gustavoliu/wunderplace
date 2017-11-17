class RemovePhotosFromRoom < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :photos
  end
end
