class CreateTechProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :tech_projects do |t|
      t.string :title
      t.string :tech_image
      t.text :description

      t.timestamps
    end
  end
end
