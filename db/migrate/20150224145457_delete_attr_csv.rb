class DeleteAttrCsv < ActiveRecord::Migration
  def change
  	remove_column :acc_data, :csv, :string
  end
end
