json.extract! card, :id, :title, :date, :order, :created_at, :updated_at
json.url card_url(card, format: :json)
