class CreateMinTransaksis < ActiveRecord::Migration
  def change
    create_table :min_transaksis do |t|
    	t.string :min_transaksi

      t.timestamps
    end
  end
end
