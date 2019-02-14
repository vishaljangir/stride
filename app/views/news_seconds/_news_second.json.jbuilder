json.extract! news_second, :id, :heading, :description, :created_at, :updated_at
json.url news_second_url(news_second, format: :json)
