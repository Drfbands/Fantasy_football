class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|
      t.string :things
      t.text :why_most_important
      t.text :why_not
      t.string :time_estimated
      t.references :focus, index: true

      t.timestamps
    end
  end
end
