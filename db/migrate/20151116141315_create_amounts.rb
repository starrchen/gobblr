class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|

      t.references :ingredient, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.integer :quantity
      t.string :units

      t.timestamps null: false
    end
  end
end
