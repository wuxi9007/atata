class AccDatum < ActiveRecord::Base
	mount_uploader :csv, CsvUploader

def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end


def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    row_hash = row.to_s
    android_id = row_hash.split(",")[0]
    time_stamp = row_hash.split(",")[1]
    x = row_hash.split(",")[2]
    y = row_hash.split(",")[3]
    z = row_hash.split(",")[4]
    notes = row_hash.split(",")[5]
    accdatum = AccDatum.new(
      android_id: android_id,
      time_stamp: time_stamp,
      x: x,
      y: y,
      z: z,
      notes: notes
      )
    accdatum.save!
  end
end
   
end
