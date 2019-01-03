class CreateMinervaUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_users do |t|

      t.timestamps
    end
  end
end
