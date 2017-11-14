class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.integer :reservation_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
