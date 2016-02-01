class CreateTits < ActiveRecord::Migration
  def change
    create_table :tits do |t|
      t.string :exercise
      t.string :set
      t.string :reps
      t.string :weight
      t.string :time
      t.text :notes
      t.text :growthrate
      t.references :fit, index: true

      t.timestamps
    end
  end
end
