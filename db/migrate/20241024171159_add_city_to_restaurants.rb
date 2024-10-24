class AddCityToRestaurants < ActiveRecord::Migration[7.2]
  def change
    add_column :restaurants, :city, :string
  end
end
