class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.text :notes
      t.text :why
      t.text :why_not
      t.references :team, index: true

      t.timestamps
    end
  end
end
