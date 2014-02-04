class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
       
      t.timestamps
    end
  end
end
