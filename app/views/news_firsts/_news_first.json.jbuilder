json.extract! news_first, :id, :heading, :description, :created_at, :updated_at
json.url news_first_url(news_first, format: :json)
