class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.string :nama_atm
      t.string :lat
      t.string :lng
      t.string :icon
      t.string :picture
      t.integer :bank_id
      t.integer :lokasi_atm_id
      t.integer :kategori_atm_id
      t.integer :min_transaksi_id

      t.timestamps
    end
  end
end
