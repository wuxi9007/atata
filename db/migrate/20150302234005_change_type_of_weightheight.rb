class ChangeTypeOfWeightheight < ActiveRecord::Migration
  def change
  	change_column :acc_data, :height, :decimal, scale: 2, precision:5
  	change_column :acc_data, :weight, :decimal, scale: 2, precision:5
  end
end
