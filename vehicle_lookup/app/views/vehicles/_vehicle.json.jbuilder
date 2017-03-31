json.extract! vehicle, :id, :price, :registration, :manufacturer, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
