class CreateFocus < ActiveRecord::Migration
  def change
    create_table :focus do |t|
      t.string :date
      t.text :notes

      t.timestamps
    end
  end
end
