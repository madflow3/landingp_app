class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone
      t.text :description
      t.text :besoins
      t.timestamps
    end
  end
end
