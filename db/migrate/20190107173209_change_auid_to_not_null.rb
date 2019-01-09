class ChangeAuidToNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column :minerva_projects, :auid, :string, null: false
    change_column :minerva_roles, :auid, :string, null: false
    change_column :minerva_users, :auid, :string, null: false
    change_column :minerva_works, :auid, :string, null: false
  end
end
