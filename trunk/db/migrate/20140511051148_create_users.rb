class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nama_lengkap
      t.string :email
      t.string :password_digest
      t.string :alamat
      t.string :no_tlp
      t.integer :user_role_id

      t.timestamps
    end
  end
end
