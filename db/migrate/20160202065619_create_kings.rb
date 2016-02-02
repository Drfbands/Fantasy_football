class CreateKings < ActiveRecord::Migration
  def change
    create_table :kings do |t|
      t.string :time
      t.text :notes
      t.text :growth
      t.references :day, index: true

      t.timestamps
    end
  end
end
