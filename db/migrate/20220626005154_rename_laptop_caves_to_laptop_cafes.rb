class RenameLaptopCavesToLaptopCafes < ActiveRecord::Migration[6.1]
  def change
    rename_table :laptop_caves, :laptop_cafes
  end
end
