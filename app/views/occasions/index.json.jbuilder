json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :type_occasion, :when, :gifter_id, :giftee_id
  json.url occasion_url(occasion, format: :json)
end
