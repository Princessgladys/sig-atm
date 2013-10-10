class CreateLokasiAtms < ActiveRecord::Migration
  def change
    create_table :lokasi_atms do |t|
      t.string :nama_atm
      t.integer :bank_id
      t.integer :jumlah_tarik_id
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
