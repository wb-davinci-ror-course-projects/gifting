json.array!(@giftees) do |giftee|
  json.extract! giftee, :id, :first_name, :last_name
  json.url giftee_url(giftee, format: :json)
end
