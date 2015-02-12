class AccDatum < ActiveRecord::Base
	mount_uploader :csv, CsvUploader
end
