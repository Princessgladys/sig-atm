class CreateKategoriAtms < ActiveRecord::Migration
  def change
    create_table :kategori_atms do |t|
    	t.string :kategori_atm

      t.timestamps
    end
  end
end
