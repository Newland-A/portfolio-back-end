class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :score
      t.campground :belongs_to
      t.user :belongs_to

      t.timestamps
    end
  end
end
