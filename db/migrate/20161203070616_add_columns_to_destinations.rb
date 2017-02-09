class AddColumnsToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :city_id, :integer
  end
end
