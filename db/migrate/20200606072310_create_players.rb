class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string  :first_name
      t.string  :second_name,  null: false
      t.belongs_to :team
      t.timestamps
    end
  end
end
