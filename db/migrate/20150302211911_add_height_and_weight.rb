class AddHeightAndWeight < ActiveRecord::Migration
  def change
  	add_column :acc_data, :height, :string
  	add_column :acc_data, :weight, :string
  end
end
