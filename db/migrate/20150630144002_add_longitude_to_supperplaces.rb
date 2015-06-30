class AddLongitudeToSupperplaces < ActiveRecord::Migration
  def change
    add_column :supperplaces, :longitude, :decimal
  end
end
