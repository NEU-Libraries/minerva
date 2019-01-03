class CreateMinervaRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_roles do |t|

      t.timestamps
    end
  end
end
