class RemoveLocationFromPeople < ActiveRecord::Migration[6.1]
  def change
    remove_column :people, :location, :string
  end
end
