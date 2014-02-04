class RenameFirstname < ActiveRecord::Migration
  def change
  	rename_column :voluntaries, :firs_tname, :first_name
  end
end
