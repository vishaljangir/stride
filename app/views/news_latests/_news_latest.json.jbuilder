json.extract! news_latest, :id, :description, :name, :created_at, :updated_at
json.url news_latest_url(news_latest, format: :json)
