json.extract! listing, :id, :location, :bds, :ba, :area, :developer, :price, :created_at, :updated_at
json.url listing_url(listing, format: :json)
