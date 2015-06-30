json.array!(@opening_hours) do |opening_hour|
  json.extract! opening_hour, :id, :opening_time, :closing_time, :day, :supperplace_id
  json.url opening_hour_url(opening_hour, format: :json)
end
