class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string     :intro,  null: false
      t.belongs_to :match
      t.belongs_to :player
      t.timestamps
    end
  end
end
