class AddLatitudeToSupperplaces < ActiveRecord::Migration
  def change
    add_column :supperplaces, :latitude, :decimal, precision: 15, scale: 10
  end
end
