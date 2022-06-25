class CreateAnnualEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :annual_events do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
