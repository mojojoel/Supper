class CreateOpeningHours < ActiveRecord::Migration
  def change
    create_table :opening_hours do |t|
      t.time :opening_time
      t.time :closing_time
      t.integer :day
      t.references :supperplace, index: true

      t.timestamps
    end
  end
end
