class ChangeTimestampOfAccData < ActiveRecord::Migration
  def change
  	change_column :acc_data, :time_stamp, :string
  end
end
