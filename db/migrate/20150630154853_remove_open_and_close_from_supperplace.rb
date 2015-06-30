class RemoveOpenAndCloseFromSupperplace < ActiveRecord::Migration
  def change
    remove_column :supperplaces, :open, :time
    remove_column :supperplaces, :close, :time
  end
end
