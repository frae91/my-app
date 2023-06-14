class ChangeNameInPeople < ActiveRecord::Migration[6.1]
  def change
    change_column :people, :name, :text
  end
end
