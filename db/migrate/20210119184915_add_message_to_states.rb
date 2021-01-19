class AddMessageToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :minerva_states, :message, :string
  end
end
