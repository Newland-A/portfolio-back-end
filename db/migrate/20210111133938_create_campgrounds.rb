class CreateCampgrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.string :slug
      t.string :image_url
      t.integer :avg_score
      t.boolean :hiking
      t.boolean :tent
      t.boolean :hammocks
      t.boolean :rv
      t.decimal :price
      
      t.timestamps
    end
  end
end
