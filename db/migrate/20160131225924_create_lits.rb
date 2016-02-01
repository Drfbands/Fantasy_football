class CreateLits < ActiveRecord::Migration
  def change
    create_table :lits do |t|
      t.string :exercise
      t.string :set
      t.string :reps
      t.string :weight
      t.string :time
      t.text :notes
      t.references :fit, index: true

      t.timestamps
    end
  end
end
