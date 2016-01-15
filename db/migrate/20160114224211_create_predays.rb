class CreatePredays < ActiveRecord::Migration
  def change
    create_table :predays do |t|
      t.string :thing
      t.text :why
      t.text :whynot
      t.text :notes
      t.references :productivity, index: true

      t.timestamps
    end
  end
end
