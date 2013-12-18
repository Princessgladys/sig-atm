class CreateKategoriAtms < ActiveRecord::Migration
  def change
    create_table :kategori_atms do |t|
    	t.string :nama_kategori

      t.timestamps
    end
  end
end
