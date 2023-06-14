class AddLocationToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :location, :string
  end
end
