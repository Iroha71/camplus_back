class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name, null: false
      t.integer :total_num, default: 0

      t.timestamps
    end
  end
end
