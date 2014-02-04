class CreateVoluntaries < ActiveRecord::Migration
  def change
    create_table :voluntaries do |t|
      t.string :last_name
      t.string :firs_tname
      t.string :email
      t.string :phone
      t.text :description
      t.boolean :get_missions

      t.timestamps
    end
  end
end