class AddNameToSupperplace < ActiveRecord::Migration
  def change
    add_column :supperplaces, :name, :string
  end
end
