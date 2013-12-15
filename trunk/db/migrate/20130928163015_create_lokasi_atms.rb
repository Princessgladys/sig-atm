class CreateLokasiAtms < ActiveRecord::Migration
  def change
    create_table :lokasi_atms do |t|
      t.string :nama_lokasi

      t.timestamps
    end
  end
end
