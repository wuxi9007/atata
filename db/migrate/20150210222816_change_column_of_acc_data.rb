class ChangeColumnOfAccData < ActiveRecord::Migration
  def change
  	change_column :acc_data, :time_stamp, :string
  	change_column :acc_data, :x, :decimal, scale: 12, precision:14
  	change_column :acc_data, :y, :decimal, scale: 12, precision:14
  	change_column :acc_data, :z, :decimal, scale: 12, precision:14
  end
end
