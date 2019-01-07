class AddAuidToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :minerva_users, :auid, :string
  end
end
