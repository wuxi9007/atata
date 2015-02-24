class ChangeNoteName < ActiveRecord::Migration
  def change
  	rename_column :acc_data, :note, :notes
  end
end
