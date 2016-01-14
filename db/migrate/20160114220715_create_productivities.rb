class CreateProductivities < ActiveRecord::Migration
  def change
    create_table :productivities do |t|
      t.string :date

      t.timestamps
    end
  end
end
