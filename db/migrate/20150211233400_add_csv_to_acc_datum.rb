class AddCsvToAccDatum < ActiveRecord::Migration
  def change
    add_column :acc_data, :csv, :string
  end
end
