class CreateLocalisations < ActiveRecord::Migration
  def change
    create_table :localisations do |t|
      t.float :longitude
      t.float :latitude
      t.references :localisable, polymorphic: true
      t.timestamps
    end
  end
end
