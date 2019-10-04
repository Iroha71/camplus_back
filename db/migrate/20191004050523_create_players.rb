class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :token
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
