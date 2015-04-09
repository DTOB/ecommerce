json.array!(@orders) do |order|
  json.extract! order, :id, :status, :pst_rate, :gst_rate, :hst_rate, :customer_id, :created_at, :updated_at
  json.url order_url(order, format: :json)
end
