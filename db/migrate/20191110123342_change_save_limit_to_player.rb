class ChangeSaveLimitToPlayer < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :savedata, :text, :limit => 40000
  end
end
