class AddLatitudeToSupperplaces < ActiveRecord::Migration
  def change
    add_column :supperplaces, :latitude, :decimal
  end
end
