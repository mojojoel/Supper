class AddLongitudeToSupperplaces < ActiveRecord::Migration
  def change
    add_column :supperplaces, :longitude, :decimal, precision: 15, scale: 10
  end
end
