class CreateEntrepreneurs < ActiveRecord::Migration
  def change
  create_table :entrepreneurs do |t|
 	t.string :last_name
    t.string :first_name
    t.string :email
    t.string :phone
    t.string :address
    t.text :description

    t.timestamps
    end
  end
end
