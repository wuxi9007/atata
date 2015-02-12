class CreateAccData < ActiveRecord::Migration
  def change
    create_table :acc_data do |t|
      t.string :android_id
      t.string :time_stamp
      t.float :x
      t.float :y
      t.float :z
      t.string :csv

      t.timestamps
    end
  end
end
