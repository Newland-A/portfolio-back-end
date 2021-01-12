class Campground < ApplicationRecord
  has_many :reviews
  # has_many :users

  accepts_nested_attributes_for :reviews

  validates :name, presence: true, length: { maximum: 255 }

  # Slugify campground name into a url safe param before create
  before_create -> (campground) do
    campground.slug = campground.name.parameterize
  end

  # get the average score of all reviews for a campground
  def calculate_average
    return 0 unless reviews.size.positive?

    avg = reviews.average(:score).to_f.round(2) * 100
    update_column(:avg_score, avg)
  end
end
