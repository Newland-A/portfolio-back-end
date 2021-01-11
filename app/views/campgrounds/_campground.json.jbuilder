json.extract! campground, :id, :name, :slug, :image_url, :avg_score, :hiking, :tent, :rv, :price, :hammocks, :created_at, :updated_at
json.url campground_url(campground, format: :json)
