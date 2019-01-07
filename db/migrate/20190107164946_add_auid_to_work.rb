class AddAuidToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :minerva_works, :auid, :string
  end
end
