class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cpf, :string
    add_column :users, :password, :string
    add_column :users, :address, :string
    add_column :users, :seller, :boolean
    add_column :users, :phone_number, :string
    add_column :users, :photo, :string
    add_column :users, :birthday, :date
  end
end
