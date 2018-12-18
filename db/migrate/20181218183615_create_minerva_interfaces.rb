class CreateMinervaInterfaces < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_interfaces do |t|
      t.string :title
      t.string :code_point

      t.timestamps
    end
  end
end
