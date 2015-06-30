class CreateSupperplaces < ActiveRecord::Migration
  def change
    create_table :supperplaces do |t|
      t.string :address
      t.string :website
      t.string :crusine
      t.integer :phone
      t.time :open
      t.time :close
      t.integer :state

      t.timestamps
    end
  end
end
