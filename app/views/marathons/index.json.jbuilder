json.array!(@marathons) do |marathon|
  json.extract! marathon, :id, :name, :city, :country, :date_description, :month, :year, :day, :kind, :latitude, :longitude, :event_date
  json.url marathon_url(marathon, format: :json)
end
