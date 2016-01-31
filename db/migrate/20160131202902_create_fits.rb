class CreateFits < ActiveRecord::Migration
  def change
    create_table :fits do |t|
      t.string :day

      t.timestamps
    end
  end
end
