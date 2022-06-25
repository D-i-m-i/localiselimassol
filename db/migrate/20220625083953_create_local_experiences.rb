class CreateLocalExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :local_experiences do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
