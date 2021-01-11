class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.belongs_to :posts
      t.integer :post_id
      
      t.timestamps
    end
  end
end
