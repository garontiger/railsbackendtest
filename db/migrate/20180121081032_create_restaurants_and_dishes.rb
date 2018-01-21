class CreateRestaurantsAndDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :type
      t.timestamps
    end
 
    create_table :dishes do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :dishes_restaurants, id: false do |t|
      t.belongs_to :restaurant, index: true
      t.belongs_to :dish, index: true
    end
  end
end