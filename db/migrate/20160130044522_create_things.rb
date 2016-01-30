class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :mostimp
      t.text :notes
      t.text :why
      t.text :whynot
      t.text :time
      t.text :noted
      t.text :growth
      t.references :day, index: true

      t.timestamps
    end
  end
end
