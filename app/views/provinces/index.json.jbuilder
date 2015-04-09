json.array!(@provinces) do |province|
  json.extract! province, :id, :name, :pst, :gst, :hst, :created_at, :updated_at
  json.url province_url(province, format: :json)
end
