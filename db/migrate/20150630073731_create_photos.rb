class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.references :supperplace, index: true

      t.timestamps
    end
  end
end
