class AddAgeToVoluntaries < ActiveRecord::Migration
  def change
    add_column :voluntaries, :age, :integer
  end
end
