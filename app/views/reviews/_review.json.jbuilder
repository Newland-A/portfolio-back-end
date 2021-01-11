json.extract! review, :id, :title, :description, :score, :belongs_to, :belongs_to, :created_at, :updated_at
json.url review_url(review, format: :json)
