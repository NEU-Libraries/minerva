class AddAuidToRole < ActiveRecord::Migration[5.2]
  def change
    add_column :minerva_roles, :auid, :string
  end
end
