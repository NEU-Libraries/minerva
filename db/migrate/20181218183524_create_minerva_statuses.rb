class CreateMinervaStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :minerva_statuses do |t|
      t.string :title

      t.timestamps
    end
  end
end