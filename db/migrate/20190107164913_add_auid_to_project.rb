class AddAuidToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :minerva_projects, :auid, :string
  end
end
