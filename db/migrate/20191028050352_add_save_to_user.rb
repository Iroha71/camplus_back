class AddSaveToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :savedata, :string
  end
  
end
