class MergeQuantityAndUnits < ActiveRecord::Migration
  def change
    change_column :amounts, :quantity, :string
    remove_column :amounts, :units
  end
end
