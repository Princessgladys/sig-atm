class AddNewFieldsToAtms < ActiveRecord::Migration
  def change
  	add_column :atms, :user_id, :integer
    add_column :atms, :is_approved, :integer

    add_index :atms, :user_id
    add_index :atms, :is_approved
  end
end
