json.extract! instrument, :id, :brand, :category, :location, :availability, :renting_price, :user_id, :condition, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)