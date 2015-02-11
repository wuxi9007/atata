json.array!(@acc_data) do |acc_datum|
  json.extract! acc_datum, :id, :android_id, :time_stamp, :x, :y, :z, :note
  json.url acc_datum_url(acc_datum, format: :json)
end
